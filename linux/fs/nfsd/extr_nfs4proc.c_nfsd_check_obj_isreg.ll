; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_nfsd_check_obj_isreg.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_nfsd_check_obj_isreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_fh = type { i32 }
%struct.TYPE_2__ = type { i32 }

@nfs_ok = common dso_local global i32 0, align 4
@nfserr_isdir = common dso_local global i32 0, align 4
@nfserr_symlink = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_fh*)* @nfsd_check_obj_isreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd_check_obj_isreg(%struct.svc_fh* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.svc_fh*, align 8
  %4 = alloca i32, align 4
  store %struct.svc_fh* %0, %struct.svc_fh** %3, align 8
  %5 = load %struct.svc_fh*, %struct.svc_fh** %3, align 8
  %6 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.TYPE_2__* @d_inode(i32 %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @S_ISREG(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @nfs_ok, align 4
  store i32 %15, i32* %2, align 4
  br label %24

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @S_ISDIR(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @nfserr_isdir, align 4
  store i32 %21, i32* %2, align 4
  br label %24

22:                                               ; preds = %16
  %23 = load i32, i32* @nfserr_symlink, align 4
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %22, %20, %14
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local %struct.TYPE_2__* @d_inode(i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
