; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmlock.c_dlmlock_remote.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmlock.c_dlmlock_remote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i64, i32 }
%struct.dlm_lock_resource = type { i64, i32, i32, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.dlm_lock = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@DLM_DENIED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"type=%d, lockres %.*s, flags = 0x%x\0A\00", align 1
@DLM_RECOVERING = common dso_local global i32 0, align 4
@DLM_LOCK_RES_IN_PROGRESS = common dso_local global i32 0, align 4
@DLM_NORMAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"%s: recovery lock was owned by dead node %u, remaster it now.\0A\00", align 1
@DLM_NOTQUEUED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [95 x i8] c"%s: $RECOVERY lock for this node (%u) is mastered by %u; got lock, manually granting (no ast)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ctxt*, %struct.dlm_lock_resource*, %struct.dlm_lock*, i32)* @dlmlock_remote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlmlock_remote(%struct.dlm_ctxt* %0, %struct.dlm_lock_resource* %1, %struct.dlm_lock* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dlm_ctxt*, align 8
  %7 = alloca %struct.dlm_lock_resource*, align 8
  %8 = alloca %struct.dlm_lock*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %6, align 8
  store %struct.dlm_lock_resource* %1, %struct.dlm_lock_resource** %7, align 8
  store %struct.dlm_lock* %2, %struct.dlm_lock** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @DLM_DENIED, align 4
  store i32 %12, i32* %10, align 4
  store i32 1, i32* %11, align 4
  %13 = load %struct.dlm_lock*, %struct.dlm_lock** %8, align 8
  %14 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %18 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %23 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 (i32, i8*, i32, i64, ...) @mlog(i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %16, i64 %21, i32 %25, i32 %26)
  %28 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %29 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %28, i32 0, i32 2
  %30 = call i32 @spin_lock(i32* %29)
  %31 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %32 = call i32 @__dlm_wait_on_lockres(%struct.dlm_lock_resource* %31)
  %33 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %34 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %6, align 8
  %37 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %35, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %4
  %41 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %42 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %41, i32 0, i32 2
  %43 = call i32 @spin_unlock(i32* %42)
  %44 = load i32, i32* @DLM_RECOVERING, align 4
  store i32 %44, i32* %5, align 4
  br label %162

45:                                               ; preds = %4
  %46 = load i32, i32* @DLM_LOCK_RES_IN_PROGRESS, align 4
  %47 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %48 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load %struct.dlm_lock*, %struct.dlm_lock** %8, align 8
  %52 = call i32 @dlm_lock_get(%struct.dlm_lock* %51)
  %53 = load %struct.dlm_lock*, %struct.dlm_lock** %8, align 8
  %54 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %53, i32 0, i32 1
  %55 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %56 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %55, i32 0, i32 6
  %57 = call i32 @list_add_tail(i32* %54, i32* %56)
  %58 = load %struct.dlm_lock*, %struct.dlm_lock** %8, align 8
  %59 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %58, i32 0, i32 0
  store i32 1, i32* %59, align 4
  %60 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %61 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %60, i32 0, i32 2
  %62 = call i32 @spin_unlock(i32* %61)
  %63 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %6, align 8
  %64 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %65 = load %struct.dlm_lock*, %struct.dlm_lock** %8, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @dlm_send_remote_lock_request(%struct.dlm_ctxt* %63, %struct.dlm_lock_resource* %64, %struct.dlm_lock* %65, i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %69 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %68, i32 0, i32 2
  %70 = call i32 @spin_lock(i32* %69)
  %71 = load i32, i32* @DLM_LOCK_RES_IN_PROGRESS, align 4
  %72 = xor i32 %71, -1
  %73 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %74 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = load %struct.dlm_lock*, %struct.dlm_lock** %8, align 8
  %78 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %77, i32 0, i32 0
  store i32 0, i32* %78, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @DLM_NORMAL, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %119

82:                                               ; preds = %45
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @DLM_RECOVERING, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %105

86:                                               ; preds = %82
  %87 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %88 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %92 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @dlm_is_recovery_lock(i32 %90, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %86
  %98 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %6, align 8
  %99 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %102 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call i32 (i32, i8*, i32, i64, ...) @mlog(i32 0, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %100, i64 %103)
  br label %113

105:                                              ; preds = %86, %82
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* @DLM_NOTQUEUED, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %105
  store i32 0, i32* %11, align 4
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @dlm_error(i32 %110)
  br label %112

112:                                              ; preds = %109, %105
  br label %113

113:                                              ; preds = %112, %97
  %114 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %115 = load %struct.dlm_lock*, %struct.dlm_lock** %8, align 8
  %116 = call i32 @dlm_revert_pending_lock(%struct.dlm_lock_resource* %114, %struct.dlm_lock* %115)
  %117 = load %struct.dlm_lock*, %struct.dlm_lock** %8, align 8
  %118 = call i32 @dlm_lock_put(%struct.dlm_lock* %117)
  br label %147

119:                                              ; preds = %45
  %120 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %121 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %120, i32 0, i32 4
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %125 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i64 @dlm_is_recovery_lock(i32 %123, i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %146

130:                                              ; preds = %119
  %131 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %6, align 8
  %132 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %6, align 8
  %135 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %138 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = call i32 (i32, i8*, i32, i64, ...) @mlog(i32 0, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.2, i64 0, i64 0), i32 %133, i64 %136, i64 %139)
  %141 = load %struct.dlm_lock*, %struct.dlm_lock** %8, align 8
  %142 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %141, i32 0, i32 1
  %143 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %144 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %143, i32 0, i32 3
  %145 = call i32 @list_move_tail(i32* %142, i32* %144)
  br label %146

146:                                              ; preds = %130, %119
  br label %147

147:                                              ; preds = %146, %113
  %148 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %149 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %148, i32 0, i32 2
  %150 = call i32 @spin_unlock(i32* %149)
  %151 = load i32, i32* %11, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %147
  %154 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %6, align 8
  %155 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %156 = call i32 @dlm_lockres_calc_usage(%struct.dlm_ctxt* %154, %struct.dlm_lock_resource* %155)
  br label %157

157:                                              ; preds = %153, %147
  %158 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %159 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %158, i32 0, i32 1
  %160 = call i32 @wake_up(i32* %159)
  %161 = load i32, i32* %10, align 4
  store i32 %161, i32* %5, align 4
  br label %162

162:                                              ; preds = %157, %40
  %163 = load i32, i32* %5, align 4
  ret i32 %163
}

declare dso_local i32 @mlog(i32, i8*, i32, i64, ...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__dlm_wait_on_lockres(%struct.dlm_lock_resource*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dlm_lock_get(%struct.dlm_lock*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @dlm_send_remote_lock_request(%struct.dlm_ctxt*, %struct.dlm_lock_resource*, %struct.dlm_lock*, i32) #1

declare dso_local i64 @dlm_is_recovery_lock(i32, i32) #1

declare dso_local i32 @dlm_error(i32) #1

declare dso_local i32 @dlm_revert_pending_lock(%struct.dlm_lock_resource*, %struct.dlm_lock*) #1

declare dso_local i32 @dlm_lock_put(%struct.dlm_lock*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @dlm_lockres_calc_usage(%struct.dlm_ctxt*, %struct.dlm_lock_resource*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
