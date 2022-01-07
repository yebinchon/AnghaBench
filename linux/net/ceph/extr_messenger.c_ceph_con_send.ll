; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_ceph_con_send.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_ceph_con_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_connection = type { i64, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ceph_msg = type { i32, %struct.TYPE_8__, i32, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64 }

@CON_STATE_CLOSED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"con_send %p closed, dropping %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"----- %p to %s%lld %d=%s len %d+%d+%d -----\0A\00", align 1
@CON_FLAG_WRITE_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ceph_con_send(%struct.ceph_connection* %0, %struct.ceph_msg* %1) #0 {
  %3 = alloca %struct.ceph_connection*, align 8
  %4 = alloca %struct.ceph_msg*, align 8
  store %struct.ceph_connection* %0, %struct.ceph_connection** %3, align 8
  store %struct.ceph_msg* %1, %struct.ceph_msg** %4, align 8
  %5 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %6 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %5, i32 0, i32 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %12 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 4
  store i32 %10, i32* %13, align 4
  %14 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %15 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %19 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @le32_to_cpu(i32 %21)
  %23 = icmp ne i64 %17, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %27 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %29 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %28, i32 0, i32 1
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %32 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @CON_STATE_CLOSED, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %2
  %37 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %38 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %39 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.ceph_connection* %37, %struct.ceph_msg* %38)
  %40 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %41 = call i32 @ceph_msg_put(%struct.ceph_msg* %40)
  %42 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %43 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %42, i32 0, i32 1
  %44 = call i32 @mutex_unlock(i32* %43)
  br label %105

45:                                               ; preds = %2
  %46 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %47 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %48 = call i32 @msg_con_set(%struct.ceph_msg* %46, %struct.ceph_connection* %47)
  %49 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %50 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %49, i32 0, i32 2
  %51 = call i32 @list_empty(i32* %50)
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i32 @BUG_ON(i32 %54)
  %56 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %57 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %56, i32 0, i32 2
  %58 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %59 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %58, i32 0, i32 3
  %60 = call i32 @list_add_tail(i32* %57, i32* %59)
  %61 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %62 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %63 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ENTITY_NAME(i32 %64)
  %66 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %67 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @le16_to_cpu(i32 %69)
  %71 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %72 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @le16_to_cpu(i32 %74)
  %76 = call i32 @ceph_msg_type_name(i32 %75)
  %77 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %78 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @le32_to_cpu(i32 %80)
  %82 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %83 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @le32_to_cpu(i32 %85)
  %87 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %88 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @le32_to_cpu(i32 %90)
  %92 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), %struct.ceph_msg* %61, i32 %65, i32 %70, i32 %76, i64 %81, i64 %86, i64 %91)
  %93 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %94 = call i32 @clear_standby(%struct.ceph_connection* %93)
  %95 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %96 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %95, i32 0, i32 1
  %97 = call i32 @mutex_unlock(i32* %96)
  %98 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %99 = load i32, i32* @CON_FLAG_WRITE_PENDING, align 4
  %100 = call i64 @con_flag_test_and_set(%struct.ceph_connection* %98, i32 %99)
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %45
  %103 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %104 = call i32 @queue_con(%struct.ceph_connection* %103)
  br label %105

105:                                              ; preds = %36, %102, %45
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dout(i8*, ...) #1

declare dso_local i32 @ceph_msg_put(%struct.ceph_msg*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @msg_con_set(%struct.ceph_msg*, %struct.ceph_connection*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @ENTITY_NAME(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ceph_msg_type_name(i32) #1

declare dso_local i32 @clear_standby(%struct.ceph_connection*) #1

declare dso_local i64 @con_flag_test_and_set(%struct.ceph_connection*, i32) #1

declare dso_local i32 @queue_con(%struct.ceph_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
