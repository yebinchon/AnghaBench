; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_namei.c_ovl_verify_fh.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_namei.c_ovl_verify_fh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.ovl_fh = type { i64 }

@ENODATA = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, i8*, %struct.ovl_fh*)* @ovl_verify_fh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_verify_fh(%struct.dentry* %0, i8* %1, %struct.ovl_fh* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ovl_fh*, align 8
  %8 = alloca %struct.ovl_fh*, align 8
  %9 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.ovl_fh* %2, %struct.ovl_fh** %7, align 8
  %10 = load %struct.dentry*, %struct.dentry** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call %struct.ovl_fh* @ovl_get_fh(%struct.dentry* %10, i8* %11)
  store %struct.ovl_fh* %12, %struct.ovl_fh** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.ovl_fh*, %struct.ovl_fh** %8, align 8
  %14 = icmp ne %struct.ovl_fh* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENODATA, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %48

18:                                               ; preds = %3
  %19 = load %struct.ovl_fh*, %struct.ovl_fh** %8, align 8
  %20 = call i64 @IS_ERR(%struct.ovl_fh* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load %struct.ovl_fh*, %struct.ovl_fh** %8, align 8
  %24 = call i32 @PTR_ERR(%struct.ovl_fh* %23)
  store i32 %24, i32* %4, align 4
  br label %48

25:                                               ; preds = %18
  %26 = load %struct.ovl_fh*, %struct.ovl_fh** %7, align 8
  %27 = getelementptr inbounds %struct.ovl_fh, %struct.ovl_fh* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.ovl_fh*, %struct.ovl_fh** %8, align 8
  %30 = getelementptr inbounds %struct.ovl_fh, %struct.ovl_fh* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %28, %31
  br i1 %32, label %41, label %33

33:                                               ; preds = %25
  %34 = load %struct.ovl_fh*, %struct.ovl_fh** %7, align 8
  %35 = load %struct.ovl_fh*, %struct.ovl_fh** %8, align 8
  %36 = load %struct.ovl_fh*, %struct.ovl_fh** %7, align 8
  %37 = getelementptr inbounds %struct.ovl_fh, %struct.ovl_fh* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @memcmp(%struct.ovl_fh* %34, %struct.ovl_fh* %35, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %33, %25
  %42 = load i32, i32* @ESTALE, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %41, %33
  %45 = load %struct.ovl_fh*, %struct.ovl_fh** %8, align 8
  %46 = call i32 @kfree(%struct.ovl_fh* %45)
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %44, %22, %15
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local %struct.ovl_fh* @ovl_get_fh(%struct.dentry*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.ovl_fh*) #1

declare dso_local i32 @PTR_ERR(%struct.ovl_fh*) #1

declare dso_local i64 @memcmp(%struct.ovl_fh*, %struct.ovl_fh*, i64) #1

declare dso_local i32 @kfree(%struct.ovl_fh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
