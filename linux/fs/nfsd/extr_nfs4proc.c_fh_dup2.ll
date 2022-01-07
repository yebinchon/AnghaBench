; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_fh_dup2.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_fh_dup2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_fh = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.svc_fh*, %struct.svc_fh*)* @fh_dup2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fh_dup2(%struct.svc_fh* %0, %struct.svc_fh* %1) #0 {
  %3 = alloca %struct.svc_fh*, align 8
  %4 = alloca %struct.svc_fh*, align 8
  store %struct.svc_fh* %0, %struct.svc_fh** %3, align 8
  store %struct.svc_fh* %1, %struct.svc_fh** %4, align 8
  %5 = load %struct.svc_fh*, %struct.svc_fh** %3, align 8
  %6 = call i32 @fh_put(%struct.svc_fh* %5)
  %7 = load %struct.svc_fh*, %struct.svc_fh** %4, align 8
  %8 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @dget(i32 %9)
  %11 = load %struct.svc_fh*, %struct.svc_fh** %4, align 8
  %12 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.svc_fh*, %struct.svc_fh** %4, align 8
  %17 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @exp_get(i64 %18)
  br label %20

20:                                               ; preds = %15, %2
  %21 = load %struct.svc_fh*, %struct.svc_fh** %3, align 8
  %22 = load %struct.svc_fh*, %struct.svc_fh** %4, align 8
  %23 = bitcast %struct.svc_fh* %21 to i8*
  %24 = bitcast %struct.svc_fh* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 %24, i64 16, i1 false)
  ret void
}

declare dso_local i32 @fh_put(%struct.svc_fh*) #1

declare dso_local i32 @dget(i32) #1

declare dso_local i32 @exp_get(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
