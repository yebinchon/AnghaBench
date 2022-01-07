; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_ceph_con_in_msg_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_ceph_con_in_msg_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_connection = type { i64, i8*, %struct.ceph_msg*, %struct.ceph_msg_header, i32, %struct.TYPE_2__* }
%struct.ceph_msg = type { i32, i32 }
%struct.ceph_msg_header = type { i32 }
%struct.TYPE_2__ = type { %struct.ceph_msg* (%struct.ceph_connection*, %struct.ceph_msg_header*, i32*)* }

@CON_STATE_OPEN = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"error allocating memory for incoming message\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_connection*, i32*)* @ceph_con_in_msg_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceph_con_in_msg_alloc(%struct.ceph_connection* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ceph_connection*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ceph_msg_header*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ceph_msg*, align 8
  %9 = alloca i32, align 4
  store %struct.ceph_connection* %0, %struct.ceph_connection** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.ceph_connection*, %struct.ceph_connection** %4, align 8
  %11 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %10, i32 0, i32 3
  store %struct.ceph_msg_header* %11, %struct.ceph_msg_header** %6, align 8
  %12 = load %struct.ceph_msg_header*, %struct.ceph_msg_header** %6, align 8
  %13 = getelementptr inbounds %struct.ceph_msg_header, %struct.ceph_msg_header* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @le32_to_cpu(i32 %14)
  store i32 %15, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %16 = load %struct.ceph_connection*, %struct.ceph_connection** %4, align 8
  %17 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %16, i32 0, i32 2
  %18 = load %struct.ceph_msg*, %struct.ceph_msg** %17, align 8
  %19 = icmp ne %struct.ceph_msg* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.ceph_connection*, %struct.ceph_connection** %4, align 8
  %23 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %22, i32 0, i32 5
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.ceph_msg* (%struct.ceph_connection*, %struct.ceph_msg_header*, i32*)*, %struct.ceph_msg* (%struct.ceph_connection*, %struct.ceph_msg_header*, i32*)** %25, align 8
  %27 = icmp ne %struct.ceph_msg* (%struct.ceph_connection*, %struct.ceph_msg_header*, i32*)* %26, null
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @BUG_ON(i32 %29)
  %31 = load %struct.ceph_connection*, %struct.ceph_connection** %4, align 8
  %32 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %31, i32 0, i32 4
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = load %struct.ceph_connection*, %struct.ceph_connection** %4, align 8
  %35 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %34, i32 0, i32 5
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load %struct.ceph_msg* (%struct.ceph_connection*, %struct.ceph_msg_header*, i32*)*, %struct.ceph_msg* (%struct.ceph_connection*, %struct.ceph_msg_header*, i32*)** %37, align 8
  %39 = load %struct.ceph_connection*, %struct.ceph_connection** %4, align 8
  %40 = load %struct.ceph_msg_header*, %struct.ceph_msg_header** %6, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = call %struct.ceph_msg* %38(%struct.ceph_connection* %39, %struct.ceph_msg_header* %40, i32* %41)
  store %struct.ceph_msg* %42, %struct.ceph_msg** %8, align 8
  %43 = load %struct.ceph_connection*, %struct.ceph_connection** %4, align 8
  %44 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %43, i32 0, i32 4
  %45 = call i32 @mutex_lock(i32* %44)
  %46 = load %struct.ceph_connection*, %struct.ceph_connection** %4, align 8
  %47 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @CON_STATE_OPEN, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %2
  %52 = load %struct.ceph_msg*, %struct.ceph_msg** %8, align 8
  %53 = icmp ne %struct.ceph_msg* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load %struct.ceph_msg*, %struct.ceph_msg** %8, align 8
  %56 = call i32 @ceph_msg_put(%struct.ceph_msg* %55)
  br label %57

57:                                               ; preds = %54, %51
  %58 = load i32, i32* @EAGAIN, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %118

60:                                               ; preds = %2
  %61 = load %struct.ceph_msg*, %struct.ceph_msg** %8, align 8
  %62 = icmp ne %struct.ceph_msg* %61, null
  br i1 %62, label %63, label %73

63:                                               ; preds = %60
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @BUG_ON(i32 %65)
  %67 = load %struct.ceph_msg*, %struct.ceph_msg** %8, align 8
  %68 = load %struct.ceph_connection*, %struct.ceph_connection** %4, align 8
  %69 = call i32 @msg_con_set(%struct.ceph_msg* %67, %struct.ceph_connection* %68)
  %70 = load %struct.ceph_msg*, %struct.ceph_msg** %8, align 8
  %71 = load %struct.ceph_connection*, %struct.ceph_connection** %4, align 8
  %72 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %71, i32 0, i32 2
  store %struct.ceph_msg* %70, %struct.ceph_msg** %72, align 8
  br label %83

73:                                               ; preds = %60
  %74 = load i32*, i32** %5, align 8
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  store i32 0, i32* %3, align 4
  br label %118

78:                                               ; preds = %73
  %79 = load %struct.ceph_connection*, %struct.ceph_connection** %4, align 8
  %80 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %79, i32 0, i32 1
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8** %80, align 8
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %118

83:                                               ; preds = %63
  %84 = load %struct.ceph_connection*, %struct.ceph_connection** %4, align 8
  %85 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %84, i32 0, i32 2
  %86 = load %struct.ceph_msg*, %struct.ceph_msg** %85, align 8
  %87 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %86, i32 0, i32 1
  %88 = load %struct.ceph_connection*, %struct.ceph_connection** %4, align 8
  %89 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %88, i32 0, i32 3
  %90 = call i32 @memcpy(i32* %87, %struct.ceph_msg_header* %89, i32 4)
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %116

93:                                               ; preds = %83
  %94 = load %struct.ceph_connection*, %struct.ceph_connection** %4, align 8
  %95 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %94, i32 0, i32 2
  %96 = load %struct.ceph_msg*, %struct.ceph_msg** %95, align 8
  %97 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %116, label %100

100:                                              ; preds = %93
  %101 = load %struct.ceph_connection*, %struct.ceph_connection** %4, align 8
  %102 = load %struct.ceph_connection*, %struct.ceph_connection** %4, align 8
  %103 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %102, i32 0, i32 2
  %104 = load %struct.ceph_msg*, %struct.ceph_msg** %103, align 8
  %105 = call i32 @ceph_alloc_middle(%struct.ceph_connection* %101, %struct.ceph_msg* %104)
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %9, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %100
  %109 = load %struct.ceph_connection*, %struct.ceph_connection** %4, align 8
  %110 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %109, i32 0, i32 2
  %111 = load %struct.ceph_msg*, %struct.ceph_msg** %110, align 8
  %112 = call i32 @ceph_msg_put(%struct.ceph_msg* %111)
  %113 = load %struct.ceph_connection*, %struct.ceph_connection** %4, align 8
  %114 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %113, i32 0, i32 2
  store %struct.ceph_msg* null, %struct.ceph_msg** %114, align 8
  br label %115

115:                                              ; preds = %108, %100
  br label %116

116:                                              ; preds = %115, %93, %83
  %117 = load i32, i32* %9, align 4
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %116, %78, %77, %57
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ceph_msg_put(%struct.ceph_msg*) #1

declare dso_local i32 @msg_con_set(%struct.ceph_msg*, %struct.ceph_connection*) #1

declare dso_local i32 @memcpy(i32*, %struct.ceph_msg_header*, i32) #1

declare dso_local i32 @ceph_alloc_middle(%struct.ceph_connection*, %struct.ceph_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
