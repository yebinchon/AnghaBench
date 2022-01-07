; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_finalize_reco_handler.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_finalize_reco_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2net_msg = type { i64 }
%struct.dlm_ctxt = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.dlm_finalize_reco = type { i32, i32, i32 }

@DLM_FINALIZE_STAGE2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"%s: node %u finalizing recovery stage%d of node %u (%u:%u)\0A\00", align 1
@ML_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [91 x i8] c"node %u sent recovery finalize msg, but node %u is supposed to be the new master, dead=%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [89 x i8] c"node %u sent recovery finalize msg for dead node %u, but node %u is supposed to be dead\0A\00", align 1
@DLM_RECO_STATE_FINALIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [100 x i8] c"%s: received finalize1 from new master %u for dead node %u, but this node has already received it!\0A\00", align 1
@.str.4 = private unnamed_addr constant [99 x i8] c"%s: received finalize2 from new master %u for dead node %u, but this node did not have finalize1!\0A\00", align 1
@.str.5 = private unnamed_addr constant [67 x i8] c"%s: recovery done, reco master was %u, dead now %u, master now %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_finalize_reco_handler(%struct.o2net_msg* %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.o2net_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.dlm_ctxt*, align 8
  %11 = alloca %struct.dlm_finalize_reco*, align 8
  %12 = alloca i32, align 4
  store %struct.o2net_msg* %0, %struct.o2net_msg** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = bitcast i8* %13 to %struct.dlm_ctxt*
  store %struct.dlm_ctxt* %14, %struct.dlm_ctxt** %10, align 8
  %15 = load %struct.o2net_msg*, %struct.o2net_msg** %6, align 8
  %16 = getelementptr inbounds %struct.o2net_msg, %struct.o2net_msg* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.dlm_finalize_reco*
  store %struct.dlm_finalize_reco* %18, %struct.dlm_finalize_reco** %11, align 8
  store i32 1, i32* %12, align 4
  %19 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %20 = call i32 @dlm_grab(%struct.dlm_ctxt* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %198

23:                                               ; preds = %4
  %24 = load %struct.dlm_finalize_reco*, %struct.dlm_finalize_reco** %11, align 8
  %25 = getelementptr inbounds %struct.dlm_finalize_reco, %struct.dlm_finalize_reco* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @DLM_FINALIZE_STAGE2, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 2, i32* %12, align 4
  br label %31

31:                                               ; preds = %30, %23
  %32 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %33 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.dlm_finalize_reco*, %struct.dlm_finalize_reco** %11, align 8
  %36 = getelementptr inbounds %struct.dlm_finalize_reco, %struct.dlm_finalize_reco* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load %struct.dlm_finalize_reco*, %struct.dlm_finalize_reco** %11, align 8
  %40 = getelementptr inbounds %struct.dlm_finalize_reco, %struct.dlm_finalize_reco* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %43 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %47 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i32, i8*, i32, i32, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %37, i32 %38, i32 %41, i32 %45, i32 %49)
  %51 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %52 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %51, i32 0, i32 2
  %53 = call i32 @spin_lock(i32* %52)
  %54 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %55 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.dlm_finalize_reco*, %struct.dlm_finalize_reco** %11, align 8
  %59 = getelementptr inbounds %struct.dlm_finalize_reco, %struct.dlm_finalize_reco* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %57, %60
  br i1 %61, label %62, label %76

62:                                               ; preds = %31
  %63 = load i32, i32* @ML_ERROR, align 4
  %64 = load %struct.dlm_finalize_reco*, %struct.dlm_finalize_reco** %11, align 8
  %65 = getelementptr inbounds %struct.dlm_finalize_reco, %struct.dlm_finalize_reco* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %68 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.dlm_finalize_reco*, %struct.dlm_finalize_reco** %11, align 8
  %72 = getelementptr inbounds %struct.dlm_finalize_reco, %struct.dlm_finalize_reco* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i32, i8*, i32, i32, i32, ...) @mlog(i32 %63, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %70, i32 %73)
  %75 = call i32 (...) @BUG()
  br label %76

76:                                               ; preds = %62, %31
  %77 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %78 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.dlm_finalize_reco*, %struct.dlm_finalize_reco** %11, align 8
  %82 = getelementptr inbounds %struct.dlm_finalize_reco, %struct.dlm_finalize_reco* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %80, %83
  br i1 %84, label %85, label %99

85:                                               ; preds = %76
  %86 = load i32, i32* @ML_ERROR, align 4
  %87 = load %struct.dlm_finalize_reco*, %struct.dlm_finalize_reco** %11, align 8
  %88 = getelementptr inbounds %struct.dlm_finalize_reco, %struct.dlm_finalize_reco* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.dlm_finalize_reco*, %struct.dlm_finalize_reco** %11, align 8
  %91 = getelementptr inbounds %struct.dlm_finalize_reco, %struct.dlm_finalize_reco* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %94 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (i32, i8*, i32, i32, i32, ...) @mlog(i32 %86, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.2, i64 0, i64 0), i32 %89, i32 %92, i32 %96)
  %98 = call i32 (...) @BUG()
  br label %99

99:                                               ; preds = %85, %76
  %100 = load i32, i32* %12, align 4
  switch i32 %100, label %180 [
    i32 1, label %101
    i32 2, label %142
  ]

101:                                              ; preds = %99
  %102 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %103 = load %struct.dlm_finalize_reco*, %struct.dlm_finalize_reco** %11, align 8
  %104 = getelementptr inbounds %struct.dlm_finalize_reco, %struct.dlm_finalize_reco* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.dlm_finalize_reco*, %struct.dlm_finalize_reco** %11, align 8
  %107 = getelementptr inbounds %struct.dlm_finalize_reco, %struct.dlm_finalize_reco* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @dlm_finish_local_lockres_recovery(%struct.dlm_ctxt* %102, i32 %105, i32 %108)
  %110 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %111 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @DLM_RECO_STATE_FINALIZE, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %132

117:                                              ; preds = %101
  %118 = load i32, i32* @ML_ERROR, align 4
  %119 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %120 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.dlm_finalize_reco*, %struct.dlm_finalize_reco** %11, align 8
  %123 = getelementptr inbounds %struct.dlm_finalize_reco, %struct.dlm_finalize_reco* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.dlm_finalize_reco*, %struct.dlm_finalize_reco** %11, align 8
  %126 = getelementptr inbounds %struct.dlm_finalize_reco, %struct.dlm_finalize_reco* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = call i32 (i32, i8*, i32, i32, i32, ...) @mlog(i32 %118, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.3, i64 0, i64 0), i32 %121, i32 %124, i32 %127)
  %129 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %130 = call i32 @dlm_print_reco_node_status(%struct.dlm_ctxt* %129)
  %131 = call i32 (...) @BUG()
  br label %132

132:                                              ; preds = %117, %101
  %133 = load i32, i32* @DLM_RECO_STATE_FINALIZE, align 4
  %134 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %135 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, %133
  store i32 %138, i32* %136, align 4
  %139 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %140 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %139, i32 0, i32 2
  %141 = call i32 @spin_unlock(i32* %140)
  br label %180

142:                                              ; preds = %99
  %143 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %144 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @DLM_RECO_STATE_FINALIZE, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %165, label %150

150:                                              ; preds = %142
  %151 = load i32, i32* @ML_ERROR, align 4
  %152 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %153 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.dlm_finalize_reco*, %struct.dlm_finalize_reco** %11, align 8
  %156 = getelementptr inbounds %struct.dlm_finalize_reco, %struct.dlm_finalize_reco* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.dlm_finalize_reco*, %struct.dlm_finalize_reco** %11, align 8
  %159 = getelementptr inbounds %struct.dlm_finalize_reco, %struct.dlm_finalize_reco* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = call i32 (i32, i8*, i32, i32, i32, ...) @mlog(i32 %151, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.4, i64 0, i64 0), i32 %154, i32 %157, i32 %160)
  %162 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %163 = call i32 @dlm_print_reco_node_status(%struct.dlm_ctxt* %162)
  %164 = call i32 (...) @BUG()
  br label %165

165:                                              ; preds = %150, %142
  %166 = load i32, i32* @DLM_RECO_STATE_FINALIZE, align 4
  %167 = xor i32 %166, -1
  %168 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %169 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = and i32 %171, %167
  store i32 %172, i32* %170, align 4
  %173 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %174 = call i32 @__dlm_reset_recovery(%struct.dlm_ctxt* %173)
  %175 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %176 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %175, i32 0, i32 2
  %177 = call i32 @spin_unlock(i32* %176)
  %178 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %179 = call i32 @dlm_kick_recovery_thread(%struct.dlm_ctxt* %178)
  br label %180

180:                                              ; preds = %99, %165, %132
  %181 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %182 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.dlm_finalize_reco*, %struct.dlm_finalize_reco** %11, align 8
  %185 = getelementptr inbounds %struct.dlm_finalize_reco, %struct.dlm_finalize_reco* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %188 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %192 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = call i32 (i32, i8*, i32, i32, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.5, i64 0, i64 0), i32 %183, i32 %186, i32 %190, i32 %194)
  %196 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %197 = call i32 @dlm_put(%struct.dlm_ctxt* %196)
  store i32 0, i32* %5, align 4
  br label %198

198:                                              ; preds = %180, %22
  %199 = load i32, i32* %5, align 4
  ret i32 %199
}

declare dso_local i32 @dlm_grab(%struct.dlm_ctxt*) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @dlm_finish_local_lockres_recovery(%struct.dlm_ctxt*, i32, i32) #1

declare dso_local i32 @dlm_print_reco_node_status(%struct.dlm_ctxt*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @__dlm_reset_recovery(%struct.dlm_ctxt*) #1

declare dso_local i32 @dlm_kick_recovery_thread(%struct.dlm_ctxt*) #1

declare dso_local i32 @dlm_put(%struct.dlm_ctxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
