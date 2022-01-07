; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_unicode.c_get_UCSname.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_unicode.c_get_UCSname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.component_name = type { i32, i32* }
%struct.dentry = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.nls_table = type { i32 }
%struct.TYPE_4__ = type { %struct.nls_table* }

@JFS_NAME_MAX = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_UCSname(%struct.component_name* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.component_name*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.nls_table*, align 8
  %7 = alloca i32, align 4
  store %struct.component_name* %0, %struct.component_name** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %8 = load %struct.dentry*, %struct.dentry** %5, align 8
  %9 = getelementptr inbounds %struct.dentry, %struct.dentry* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.TYPE_4__* @JFS_SBI(i32 %10)
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.nls_table*, %struct.nls_table** %12, align 8
  store %struct.nls_table* %13, %struct.nls_table** %6, align 8
  %14 = load %struct.dentry*, %struct.dentry** %5, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @JFS_NAME_MAX, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @ENAMETOOLONG, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %64

24:                                               ; preds = %2
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 1
  %27 = load i32, i32* @GFP_NOFS, align 4
  %28 = call i32* @kmalloc_array(i32 %26, i32 4, i32 %27)
  %29 = load %struct.component_name*, %struct.component_name** %4, align 8
  %30 = getelementptr inbounds %struct.component_name, %struct.component_name* %29, i32 0, i32 1
  store i32* %28, i32** %30, align 8
  %31 = load %struct.component_name*, %struct.component_name** %4, align 8
  %32 = getelementptr inbounds %struct.component_name, %struct.component_name* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %24
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %64

38:                                               ; preds = %24
  %39 = load %struct.component_name*, %struct.component_name** %4, align 8
  %40 = getelementptr inbounds %struct.component_name, %struct.component_name* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.dentry*, %struct.dentry** %5, align 8
  %43 = getelementptr inbounds %struct.dentry, %struct.dentry* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.nls_table*, %struct.nls_table** %6, align 8
  %48 = call i32 @jfs_strtoUCS(i32* %41, i32 %45, i32 %46, %struct.nls_table* %47)
  %49 = load %struct.component_name*, %struct.component_name** %4, align 8
  %50 = getelementptr inbounds %struct.component_name, %struct.component_name* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.component_name*, %struct.component_name** %4, align 8
  %52 = getelementptr inbounds %struct.component_name, %struct.component_name* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %38
  %56 = load %struct.component_name*, %struct.component_name** %4, align 8
  %57 = getelementptr inbounds %struct.component_name, %struct.component_name* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @kfree(i32* %58)
  %60 = load %struct.component_name*, %struct.component_name** %4, align 8
  %61 = getelementptr inbounds %struct.component_name, %struct.component_name* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %3, align 4
  br label %64

63:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %55, %35, %21
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.TYPE_4__* @JFS_SBI(i32) #1

declare dso_local i32* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @jfs_strtoUCS(i32*, i32, i32, %struct.nls_table*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
