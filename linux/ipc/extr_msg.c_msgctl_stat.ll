; ModuleID = '/home/carl/AnghaBench/linux/ipc/extr_msg.c_msgctl_stat.c'
source_filename = "/home/carl/AnghaBench/linux/ipc/extr_msg.c_msgctl_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipc_namespace = type { i32 }
%struct.msqid64_ds = type { i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32 }
%struct.msg_queue = type { i32, i32, i32, %struct.TYPE_8__, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@MSG_STAT = common dso_local global i32 0, align 4
@MSG_STAT_ANY = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@EIDRM = common dso_local global i32 0, align 4
@IPC_STAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipc_namespace*, i32, i32, %struct.msqid64_ds*)* @msgctl_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msgctl_stat(%struct.ipc_namespace* %0, i32 %1, i32 %2, %struct.msqid64_ds* %3) #0 {
  %5 = alloca %struct.ipc_namespace*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.msqid64_ds*, align 8
  %9 = alloca %struct.msg_queue*, align 8
  %10 = alloca i32, align 4
  store %struct.ipc_namespace* %0, %struct.ipc_namespace** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.msqid64_ds* %3, %struct.msqid64_ds** %8, align 8
  %11 = load %struct.msqid64_ds*, %struct.msqid64_ds** %8, align 8
  %12 = call i32 @memset(%struct.msqid64_ds* %11, i32 0, i32 56)
  %13 = call i32 (...) @rcu_read_lock()
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @MSG_STAT, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @MSG_STAT_ANY, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %17, %4
  %22 = load %struct.ipc_namespace*, %struct.ipc_namespace** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call %struct.msg_queue* @msq_obtain_object(%struct.ipc_namespace* %22, i32 %23)
  store %struct.msg_queue* %24, %struct.msg_queue** %9, align 8
  %25 = load %struct.msg_queue*, %struct.msg_queue** %9, align 8
  %26 = call i64 @IS_ERR(%struct.msg_queue* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load %struct.msg_queue*, %struct.msg_queue** %9, align 8
  %30 = call i32 @PTR_ERR(%struct.msg_queue* %29)
  store i32 %30, i32* %10, align 4
  br label %163

31:                                               ; preds = %21
  br label %43

32:                                               ; preds = %17
  %33 = load %struct.ipc_namespace*, %struct.ipc_namespace** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call %struct.msg_queue* @msq_obtain_object_check(%struct.ipc_namespace* %33, i32 %34)
  store %struct.msg_queue* %35, %struct.msg_queue** %9, align 8
  %36 = load %struct.msg_queue*, %struct.msg_queue** %9, align 8
  %37 = call i64 @IS_ERR(%struct.msg_queue* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load %struct.msg_queue*, %struct.msg_queue** %9, align 8
  %41 = call i32 @PTR_ERR(%struct.msg_queue* %40)
  store i32 %41, i32* %10, align 4
  br label %163

42:                                               ; preds = %32
  br label %43

43:                                               ; preds = %42, %31
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @MSG_STAT_ANY, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load %struct.msg_queue*, %struct.msg_queue** %9, align 8
  %49 = getelementptr inbounds %struct.msg_queue, %struct.msg_queue* %48, i32 0, i32 3
  %50 = call i32 @audit_ipc_obj(%struct.TYPE_8__* %49)
  br label %62

51:                                               ; preds = %43
  %52 = load i32, i32* @EACCES, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %10, align 4
  %54 = load %struct.ipc_namespace*, %struct.ipc_namespace** %5, align 8
  %55 = load %struct.msg_queue*, %struct.msg_queue** %9, align 8
  %56 = getelementptr inbounds %struct.msg_queue, %struct.msg_queue* %55, i32 0, i32 3
  %57 = load i32, i32* @S_IRUGO, align 4
  %58 = call i64 @ipcperms(%struct.ipc_namespace* %54, %struct.TYPE_8__* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  br label %163

61:                                               ; preds = %51
  br label %62

62:                                               ; preds = %61, %47
  %63 = load %struct.msg_queue*, %struct.msg_queue** %9, align 8
  %64 = getelementptr inbounds %struct.msg_queue, %struct.msg_queue* %63, i32 0, i32 3
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @security_msg_queue_msgctl(%struct.TYPE_8__* %64, i32 %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %163

70:                                               ; preds = %62
  %71 = load %struct.msg_queue*, %struct.msg_queue** %9, align 8
  %72 = getelementptr inbounds %struct.msg_queue, %struct.msg_queue* %71, i32 0, i32 3
  %73 = call i32 @ipc_lock_object(%struct.TYPE_8__* %72)
  %74 = load %struct.msg_queue*, %struct.msg_queue** %9, align 8
  %75 = getelementptr inbounds %struct.msg_queue, %struct.msg_queue* %74, i32 0, i32 3
  %76 = call i32 @ipc_valid_object(%struct.TYPE_8__* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %70
  %79 = load %struct.msg_queue*, %struct.msg_queue** %9, align 8
  %80 = getelementptr inbounds %struct.msg_queue, %struct.msg_queue* %79, i32 0, i32 3
  %81 = call i32 @ipc_unlock_object(%struct.TYPE_8__* %80)
  %82 = load i32, i32* @EIDRM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %10, align 4
  br label %163

84:                                               ; preds = %70
  %85 = load %struct.msg_queue*, %struct.msg_queue** %9, align 8
  %86 = getelementptr inbounds %struct.msg_queue, %struct.msg_queue* %85, i32 0, i32 3
  %87 = load %struct.msqid64_ds*, %struct.msqid64_ds** %8, align 8
  %88 = getelementptr inbounds %struct.msqid64_ds, %struct.msqid64_ds* %87, i32 0, i32 11
  %89 = call i32 @kernel_to_ipc64_perm(%struct.TYPE_8__* %86, i32* %88)
  %90 = load %struct.msg_queue*, %struct.msg_queue** %9, align 8
  %91 = getelementptr inbounds %struct.msg_queue, %struct.msg_queue* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.msqid64_ds*, %struct.msqid64_ds** %8, align 8
  %94 = getelementptr inbounds %struct.msqid64_ds, %struct.msqid64_ds* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load %struct.msg_queue*, %struct.msg_queue** %9, align 8
  %96 = getelementptr inbounds %struct.msg_queue, %struct.msg_queue* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.msqid64_ds*, %struct.msqid64_ds** %8, align 8
  %99 = getelementptr inbounds %struct.msqid64_ds, %struct.msqid64_ds* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load %struct.msg_queue*, %struct.msg_queue** %9, align 8
  %101 = getelementptr inbounds %struct.msg_queue, %struct.msg_queue* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.msqid64_ds*, %struct.msqid64_ds** %8, align 8
  %104 = getelementptr inbounds %struct.msqid64_ds, %struct.msqid64_ds* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 8
  %105 = load %struct.msg_queue*, %struct.msg_queue** %9, align 8
  %106 = getelementptr inbounds %struct.msg_queue, %struct.msg_queue* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = ashr i32 %107, 32
  %109 = load %struct.msqid64_ds*, %struct.msqid64_ds** %8, align 8
  %110 = getelementptr inbounds %struct.msqid64_ds, %struct.msqid64_ds* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 4
  %111 = load %struct.msg_queue*, %struct.msg_queue** %9, align 8
  %112 = getelementptr inbounds %struct.msg_queue, %struct.msg_queue* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = ashr i32 %113, 32
  %115 = load %struct.msqid64_ds*, %struct.msqid64_ds** %8, align 8
  %116 = getelementptr inbounds %struct.msqid64_ds, %struct.msqid64_ds* %115, i32 0, i32 4
  store i32 %114, i32* %116, align 8
  %117 = load %struct.msg_queue*, %struct.msg_queue** %9, align 8
  %118 = getelementptr inbounds %struct.msg_queue, %struct.msg_queue* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = ashr i32 %119, 32
  %121 = load %struct.msqid64_ds*, %struct.msqid64_ds** %8, align 8
  %122 = getelementptr inbounds %struct.msqid64_ds, %struct.msqid64_ds* %121, i32 0, i32 5
  store i32 %120, i32* %122, align 4
  %123 = load %struct.msg_queue*, %struct.msg_queue** %9, align 8
  %124 = getelementptr inbounds %struct.msg_queue, %struct.msg_queue* %123, i32 0, i32 8
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.msqid64_ds*, %struct.msqid64_ds** %8, align 8
  %127 = getelementptr inbounds %struct.msqid64_ds, %struct.msqid64_ds* %126, i32 0, i32 10
  store i32 %125, i32* %127, align 8
  %128 = load %struct.msg_queue*, %struct.msg_queue** %9, align 8
  %129 = getelementptr inbounds %struct.msg_queue, %struct.msg_queue* %128, i32 0, i32 7
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.msqid64_ds*, %struct.msqid64_ds** %8, align 8
  %132 = getelementptr inbounds %struct.msqid64_ds, %struct.msqid64_ds* %131, i32 0, i32 9
  store i32 %130, i32* %132, align 4
  %133 = load %struct.msg_queue*, %struct.msg_queue** %9, align 8
  %134 = getelementptr inbounds %struct.msg_queue, %struct.msg_queue* %133, i32 0, i32 6
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.msqid64_ds*, %struct.msqid64_ds** %8, align 8
  %137 = getelementptr inbounds %struct.msqid64_ds, %struct.msqid64_ds* %136, i32 0, i32 8
  store i32 %135, i32* %137, align 8
  %138 = load %struct.msg_queue*, %struct.msg_queue** %9, align 8
  %139 = getelementptr inbounds %struct.msg_queue, %struct.msg_queue* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 4
  %141 = call i8* @pid_vnr(i32 %140)
  %142 = load %struct.msqid64_ds*, %struct.msqid64_ds** %8, align 8
  %143 = getelementptr inbounds %struct.msqid64_ds, %struct.msqid64_ds* %142, i32 0, i32 7
  store i8* %141, i8** %143, align 8
  %144 = load %struct.msg_queue*, %struct.msg_queue** %9, align 8
  %145 = getelementptr inbounds %struct.msg_queue, %struct.msg_queue* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 4
  %147 = call i8* @pid_vnr(i32 %146)
  %148 = load %struct.msqid64_ds*, %struct.msqid64_ds** %8, align 8
  %149 = getelementptr inbounds %struct.msqid64_ds, %struct.msqid64_ds* %148, i32 0, i32 6
  store i8* %147, i8** %149, align 8
  %150 = load i32, i32* %7, align 4
  %151 = load i32, i32* @IPC_STAT, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %84
  store i32 0, i32* %10, align 4
  br label %159

154:                                              ; preds = %84
  %155 = load %struct.msg_queue*, %struct.msg_queue** %9, align 8
  %156 = getelementptr inbounds %struct.msg_queue, %struct.msg_queue* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  store i32 %158, i32* %10, align 4
  br label %159

159:                                              ; preds = %154, %153
  %160 = load %struct.msg_queue*, %struct.msg_queue** %9, align 8
  %161 = getelementptr inbounds %struct.msg_queue, %struct.msg_queue* %160, i32 0, i32 3
  %162 = call i32 @ipc_unlock_object(%struct.TYPE_8__* %161)
  br label %163

163:                                              ; preds = %159, %78, %69, %60, %39, %28
  %164 = call i32 (...) @rcu_read_unlock()
  %165 = load i32, i32* %10, align 4
  ret i32 %165
}

declare dso_local i32 @memset(%struct.msqid64_ds*, i32, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.msg_queue* @msq_obtain_object(%struct.ipc_namespace*, i32) #1

declare dso_local i64 @IS_ERR(%struct.msg_queue*) #1

declare dso_local i32 @PTR_ERR(%struct.msg_queue*) #1

declare dso_local %struct.msg_queue* @msq_obtain_object_check(%struct.ipc_namespace*, i32) #1

declare dso_local i32 @audit_ipc_obj(%struct.TYPE_8__*) #1

declare dso_local i64 @ipcperms(%struct.ipc_namespace*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @security_msg_queue_msgctl(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @ipc_lock_object(%struct.TYPE_8__*) #1

declare dso_local i32 @ipc_valid_object(%struct.TYPE_8__*) #1

declare dso_local i32 @ipc_unlock_object(%struct.TYPE_8__*) #1

declare dso_local i32 @kernel_to_ipc64_perm(%struct.TYPE_8__*, i32*) #1

declare dso_local i8* @pid_vnr(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
