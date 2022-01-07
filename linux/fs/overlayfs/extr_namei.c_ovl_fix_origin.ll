; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_namei.c_ovl_fix_origin.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_namei.c_ovl_fix_origin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.dentry*, %struct.dentry*)* @ovl_fix_origin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_fix_origin(%struct.dentry* %0, %struct.dentry* %1, %struct.dentry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  %9 = load %struct.dentry*, %struct.dentry** %7, align 8
  %10 = call i64 @ovl_check_origin_xattr(%struct.dentry* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %39

13:                                               ; preds = %3
  %14 = load %struct.dentry*, %struct.dentry** %5, align 8
  %15 = call i32 @ovl_want_write(%struct.dentry* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %4, align 4
  br label %39

20:                                               ; preds = %13
  %21 = load %struct.dentry*, %struct.dentry** %5, align 8
  %22 = load %struct.dentry*, %struct.dentry** %6, align 8
  %23 = load %struct.dentry*, %struct.dentry** %7, align 8
  %24 = call i32 @ovl_set_origin(%struct.dentry* %21, %struct.dentry* %22, %struct.dentry* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %20
  %28 = load %struct.dentry*, %struct.dentry** %5, align 8
  %29 = getelementptr inbounds %struct.dentry, %struct.dentry* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.dentry*, %struct.dentry** %7, align 8
  %32 = getelementptr inbounds %struct.dentry, %struct.dentry* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ovl_set_impure(i32 %30, i32 %33)
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %27, %20
  %36 = load %struct.dentry*, %struct.dentry** %5, align 8
  %37 = call i32 @ovl_drop_write(%struct.dentry* %36)
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %35, %18, %12
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i64 @ovl_check_origin_xattr(%struct.dentry*) #1

declare dso_local i32 @ovl_want_write(%struct.dentry*) #1

declare dso_local i32 @ovl_set_origin(%struct.dentry*, %struct.dentry*, %struct.dentry*) #1

declare dso_local i32 @ovl_set_impure(i32, i32) #1

declare dso_local i32 @ovl_drop_write(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
