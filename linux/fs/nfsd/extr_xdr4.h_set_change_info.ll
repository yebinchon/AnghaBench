; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_xdr4.h_set_change_info.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_xdr4.h_set_change_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_change_info = type { i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.svc_fh = type { %struct.TYPE_6__, %struct.TYPE_4__, i32, i32, i32, i64, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfsd4_change_info*, %struct.svc_fh*)* @set_change_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_change_info(%struct.nfsd4_change_info* %0, %struct.svc_fh* %1) #0 {
  %3 = alloca %struct.nfsd4_change_info*, align 8
  %4 = alloca %struct.svc_fh*, align 8
  store %struct.nfsd4_change_info* %0, %struct.nfsd4_change_info** %3, align 8
  store %struct.svc_fh* %1, %struct.svc_fh** %4, align 8
  %5 = load %struct.svc_fh*, %struct.svc_fh** %4, align 8
  %6 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.svc_fh*, %struct.svc_fh** %4, align 8
  %13 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.nfsd4_change_info*, %struct.nfsd4_change_info** %3, align 8
  %16 = getelementptr inbounds %struct.nfsd4_change_info, %struct.nfsd4_change_info* %15, i32 0, i32 7
  store i64 %14, i64* %16, align 8
  %17 = load %struct.svc_fh*, %struct.svc_fh** %4, align 8
  %18 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @d_inode(i32 %19)
  %21 = call i32 @IS_I_VERSION(i32 %20)
  %22 = load %struct.nfsd4_change_info*, %struct.nfsd4_change_info** %3, align 8
  %23 = getelementptr inbounds %struct.nfsd4_change_info, %struct.nfsd4_change_info* %22, i32 0, i32 6
  store i32 %21, i32* %23, align 8
  %24 = load %struct.svc_fh*, %struct.svc_fh** %4, align 8
  %25 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.nfsd4_change_info*, %struct.nfsd4_change_info** %3, align 8
  %28 = getelementptr inbounds %struct.nfsd4_change_info, %struct.nfsd4_change_info* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 4
  %29 = load %struct.svc_fh*, %struct.svc_fh** %4, align 8
  %30 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.nfsd4_change_info*, %struct.nfsd4_change_info** %3, align 8
  %33 = getelementptr inbounds %struct.nfsd4_change_info, %struct.nfsd4_change_info* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 8
  %34 = load %struct.svc_fh*, %struct.svc_fh** %4, align 8
  %35 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.nfsd4_change_info*, %struct.nfsd4_change_info** %3, align 8
  %39 = getelementptr inbounds %struct.nfsd4_change_info, %struct.nfsd4_change_info* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load %struct.svc_fh*, %struct.svc_fh** %4, align 8
  %41 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.nfsd4_change_info*, %struct.nfsd4_change_info** %3, align 8
  %45 = getelementptr inbounds %struct.nfsd4_change_info, %struct.nfsd4_change_info* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load %struct.svc_fh*, %struct.svc_fh** %4, align 8
  %47 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.nfsd4_change_info*, %struct.nfsd4_change_info** %3, align 8
  %52 = getelementptr inbounds %struct.nfsd4_change_info, %struct.nfsd4_change_info* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.svc_fh*, %struct.svc_fh** %4, align 8
  %54 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.nfsd4_change_info*, %struct.nfsd4_change_info** %3, align 8
  %59 = getelementptr inbounds %struct.nfsd4_change_info, %struct.nfsd4_change_info* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @IS_I_VERSION(i32) #1

declare dso_local i32 @d_inode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
