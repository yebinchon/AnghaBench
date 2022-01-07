; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_con_fault.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_con_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_connection = type { i64, i32, i32, i32, %struct.TYPE_2__*, i32*, i32, i32 }
%struct.TYPE_2__ = type { %struct.ceph_connection* }

@.str = private unnamed_addr constant [31 x i8] c"fault %p state %lu to peer %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"%s%lld %s %s\0A\00", align 1
@CON_STATE_CONNECTING = common dso_local global i64 0, align 8
@CON_STATE_NEGOTIATING = common dso_local global i64 0, align 8
@CON_STATE_OPEN = common dso_local global i64 0, align 8
@CON_FLAG_LOSSYTX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"fault on LOSSYTX channel, marking CLOSED\0A\00", align 1
@CON_STATE_CLOSED = common dso_local global i64 0, align 8
@CON_FLAG_KEEPALIVE_PENDING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"fault %p setting STANDBY clearing WRITE_PENDING\0A\00", align 1
@CON_FLAG_WRITE_PENDING = common dso_local global i32 0, align 4
@CON_STATE_STANDBY = common dso_local global i64 0, align 8
@CON_STATE_PREOPEN = common dso_local global i64 0, align 8
@BASE_DELAY_INTERVAL = common dso_local global i32 0, align 4
@MAX_DELAY_INTERVAL = common dso_local global i32 0, align 4
@CON_FLAG_BACKOFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_connection*)* @con_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @con_fault(%struct.ceph_connection* %0) #0 {
  %2 = alloca %struct.ceph_connection*, align 8
  store %struct.ceph_connection* %0, %struct.ceph_connection** %2, align 8
  %3 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %4 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %5 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %8 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %7, i32 0, i32 6
  %9 = call i32 @ceph_pr_addr(i32* %8)
  %10 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.ceph_connection* %3, i64 %6, i32 %9)
  %11 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %12 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ENTITY_NAME(i32 %13)
  %15 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %16 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %15, i32 0, i32 6
  %17 = call i32 @ceph_pr_addr(i32* %16)
  %18 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %19 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %18, i32 0, i32 5
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @pr_warn(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %14, i32 %17, i32* %20)
  %22 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %23 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %22, i32 0, i32 5
  store i32* null, i32** %23, align 8
  %24 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %25 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CON_STATE_CONNECTING, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %1
  %30 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %31 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @CON_STATE_NEGOTIATING, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %37 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @CON_STATE_OPEN, align 8
  %40 = icmp ne i64 %38, %39
  br label %41

41:                                               ; preds = %35, %29, %1
  %42 = phi i1 [ false, %29 ], [ false, %1 ], [ %40, %35 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @WARN_ON(i32 %43)
  %45 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %46 = call i32 @con_close_socket(%struct.ceph_connection* %45)
  %47 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %48 = load i32, i32* @CON_FLAG_LOSSYTX, align 4
  %49 = call i64 @con_flag_test(%struct.ceph_connection* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %41
  %52 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i64, i64* @CON_STATE_CLOSED, align 8
  %54 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %55 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  br label %131

56:                                               ; preds = %41
  %57 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %58 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %57, i32 0, i32 4
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = icmp ne %struct.TYPE_2__* %59, null
  br i1 %60, label %61, label %77

61:                                               ; preds = %56
  %62 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %63 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %62, i32 0, i32 4
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load %struct.ceph_connection*, %struct.ceph_connection** %65, align 8
  %67 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %68 = icmp ne %struct.ceph_connection* %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @BUG_ON(i32 %69)
  %71 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %72 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %71, i32 0, i32 4
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = call i32 @ceph_msg_put(%struct.TYPE_2__* %73)
  %75 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %76 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %75, i32 0, i32 4
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %76, align 8
  br label %77

77:                                               ; preds = %61, %56
  %78 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %79 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %78, i32 0, i32 3
  %80 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %81 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %80, i32 0, i32 2
  %82 = call i32 @list_splice_init(i32* %79, i32* %81)
  %83 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %84 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %83, i32 0, i32 2
  %85 = call i64 @list_empty(i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %101

87:                                               ; preds = %77
  %88 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %89 = load i32, i32* @CON_FLAG_KEEPALIVE_PENDING, align 4
  %90 = call i64 @con_flag_test(%struct.ceph_connection* %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %101, label %92

92:                                               ; preds = %87
  %93 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %94 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), %struct.ceph_connection* %93)
  %95 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %96 = load i32, i32* @CON_FLAG_WRITE_PENDING, align 4
  %97 = call i32 @con_flag_clear(%struct.ceph_connection* %95, i32 %96)
  %98 = load i64, i64* @CON_STATE_STANDBY, align 8
  %99 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %100 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %99, i32 0, i32 0
  store i64 %98, i64* %100, align 8
  br label %131

101:                                              ; preds = %87, %77
  %102 = load i64, i64* @CON_STATE_PREOPEN, align 8
  %103 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %104 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  %105 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %106 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %101
  %110 = load i32, i32* @BASE_DELAY_INTERVAL, align 4
  %111 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %112 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 8
  br label %125

113:                                              ; preds = %101
  %114 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %115 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @MAX_DELAY_INTERVAL, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %113
  %120 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %121 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = mul nsw i32 %122, 2
  store i32 %123, i32* %121, align 8
  br label %124

124:                                              ; preds = %119, %113
  br label %125

125:                                              ; preds = %124, %109
  %126 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %127 = load i32, i32* @CON_FLAG_BACKOFF, align 4
  %128 = call i32 @con_flag_set(%struct.ceph_connection* %126, i32 %127)
  %129 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  %130 = call i32 @queue_con(%struct.ceph_connection* %129)
  br label %131

131:                                              ; preds = %51, %125, %92
  ret void
}

declare dso_local i32 @dout(i8*, ...) #1

declare dso_local i32 @ceph_pr_addr(i32*) #1

declare dso_local i32 @pr_warn(i8*, i32, i32, i32*) #1

declare dso_local i32 @ENTITY_NAME(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @con_close_socket(%struct.ceph_connection*) #1

declare dso_local i64 @con_flag_test(%struct.ceph_connection*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ceph_msg_put(%struct.TYPE_2__*) #1

declare dso_local i32 @list_splice_init(i32*, i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @con_flag_clear(%struct.ceph_connection*, i32) #1

declare dso_local i32 @con_flag_set(%struct.ceph_connection*, i32) #1

declare dso_local i32 @queue_con(%struct.ceph_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
