; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_copy_up.c_ovl_prep_cu_creds.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_copy_up.c_ovl_prep_cu_creds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.ovl_cu_creds = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.ovl_cu_creds*)* @ovl_prep_cu_creds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_prep_cu_creds(%struct.dentry* %0, %struct.ovl_cu_creds* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.ovl_cu_creds*, align 8
  %6 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.ovl_cu_creds* %1, %struct.ovl_cu_creds** %5, align 8
  %7 = load %struct.ovl_cu_creds*, %struct.ovl_cu_creds** %5, align 8
  %8 = getelementptr inbounds %struct.ovl_cu_creds, %struct.ovl_cu_creds* %7, i32 0, i32 0
  store i32* null, i32** %8, align 8
  %9 = load %struct.ovl_cu_creds*, %struct.ovl_cu_creds** %5, align 8
  %10 = getelementptr inbounds %struct.ovl_cu_creds, %struct.ovl_cu_creds* %9, i32 0, i32 1
  store i32 0, i32* %10, align 8
  %11 = load %struct.dentry*, %struct.dentry** %4, align 8
  %12 = load %struct.ovl_cu_creds*, %struct.ovl_cu_creds** %5, align 8
  %13 = getelementptr inbounds %struct.ovl_cu_creds, %struct.ovl_cu_creds* %12, i32 0, i32 0
  %14 = call i32 @security_inode_copy_up(%struct.dentry* %11, i32** %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %3, align 4
  br label %32

19:                                               ; preds = %2
  %20 = load %struct.ovl_cu_creds*, %struct.ovl_cu_creds** %5, align 8
  %21 = getelementptr inbounds %struct.ovl_cu_creds, %struct.ovl_cu_creds* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.ovl_cu_creds*, %struct.ovl_cu_creds** %5, align 8
  %26 = getelementptr inbounds %struct.ovl_cu_creds, %struct.ovl_cu_creds* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @override_creds(i32* %27)
  %29 = load %struct.ovl_cu_creds*, %struct.ovl_cu_creds** %5, align 8
  %30 = getelementptr inbounds %struct.ovl_cu_creds, %struct.ovl_cu_creds* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  br label %31

31:                                               ; preds = %24, %19
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %17
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @security_inode_copy_up(%struct.dentry*, i32**) #1

declare dso_local i32 @override_creds(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
