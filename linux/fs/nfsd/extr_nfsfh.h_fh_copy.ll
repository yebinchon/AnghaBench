; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsfh.h_fh_copy.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsfh.h_fh_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_fh = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.svc_fh* (%struct.svc_fh*, %struct.svc_fh*)* @fh_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.svc_fh* @fh_copy(%struct.svc_fh* %0, %struct.svc_fh* %1) #0 {
  %3 = alloca %struct.svc_fh*, align 8
  %4 = alloca %struct.svc_fh*, align 8
  store %struct.svc_fh* %0, %struct.svc_fh** %3, align 8
  store %struct.svc_fh* %1, %struct.svc_fh** %4, align 8
  %5 = load %struct.svc_fh*, %struct.svc_fh** %4, align 8
  %6 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load %struct.svc_fh*, %struct.svc_fh** %4, align 8
  %11 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br label %14

14:                                               ; preds = %9, %2
  %15 = phi i1 [ true, %2 ], [ %13, %9 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @WARN_ON(i32 %16)
  %18 = load %struct.svc_fh*, %struct.svc_fh** %3, align 8
  %19 = load %struct.svc_fh*, %struct.svc_fh** %4, align 8
  %20 = bitcast %struct.svc_fh* %18 to i8*
  %21 = bitcast %struct.svc_fh* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 16, i1 false)
  %22 = load %struct.svc_fh*, %struct.svc_fh** %3, align 8
  ret %struct.svc_fh* %22
}

declare dso_local i32 @WARN_ON(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
