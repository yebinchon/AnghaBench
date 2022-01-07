; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_includetask.h_aa_dup_task_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_includetask.h_aa_dup_task_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_task_ctx = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aa_task_ctx*, %struct.aa_task_ctx*)* @aa_dup_task_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aa_dup_task_ctx(%struct.aa_task_ctx* %0, %struct.aa_task_ctx* %1) #0 {
  %3 = alloca %struct.aa_task_ctx*, align 8
  %4 = alloca %struct.aa_task_ctx*, align 8
  store %struct.aa_task_ctx* %0, %struct.aa_task_ctx** %3, align 8
  store %struct.aa_task_ctx* %1, %struct.aa_task_ctx** %4, align 8
  %5 = load %struct.aa_task_ctx*, %struct.aa_task_ctx** %3, align 8
  %6 = load %struct.aa_task_ctx*, %struct.aa_task_ctx** %4, align 8
  %7 = bitcast %struct.aa_task_ctx* %5 to i8*
  %8 = bitcast %struct.aa_task_ctx* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 12, i1 false)
  %9 = load %struct.aa_task_ctx*, %struct.aa_task_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.aa_task_ctx, %struct.aa_task_ctx* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @aa_get_label(i32 %11)
  %13 = load %struct.aa_task_ctx*, %struct.aa_task_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.aa_task_ctx, %struct.aa_task_ctx* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @aa_get_label(i32 %15)
  %17 = load %struct.aa_task_ctx*, %struct.aa_task_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.aa_task_ctx, %struct.aa_task_ctx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @aa_get_label(i32 %19)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @aa_get_label(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
