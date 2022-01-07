; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_symlink.c_udf_symlink_getattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_symlink.c_udf_symlink_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { %struct.dentry* }
%struct.dentry = type { i32 }
%struct.kstat = type { i32 }
%struct.inode = type { i32 }
%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path*, %struct.kstat*, i32, i32)* @udf_symlink_getattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_symlink_getattr(%struct.path* %0, %struct.kstat* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.path*, align 8
  %7 = alloca %struct.kstat*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.page*, align 8
  store %struct.path* %0, %struct.path** %6, align 8
  store %struct.kstat* %1, %struct.kstat** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.path*, %struct.path** %6, align 8
  %14 = getelementptr inbounds %struct.path, %struct.path* %13, i32 0, i32 0
  %15 = load %struct.dentry*, %struct.dentry** %14, align 8
  store %struct.dentry* %15, %struct.dentry** %10, align 8
  %16 = load %struct.dentry*, %struct.dentry** %10, align 8
  %17 = call %struct.inode* @d_backing_inode(%struct.dentry* %16)
  store %struct.inode* %17, %struct.inode** %11, align 8
  %18 = load %struct.inode*, %struct.inode** %11, align 8
  %19 = load %struct.kstat*, %struct.kstat** %7, align 8
  %20 = call i32 @generic_fillattr(%struct.inode* %18, %struct.kstat* %19)
  %21 = load %struct.inode*, %struct.inode** %11, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.page* @read_mapping_page(i32 %23, i32 0, i32* null)
  store %struct.page* %24, %struct.page** %12, align 8
  %25 = load %struct.page*, %struct.page** %12, align 8
  %26 = call i64 @IS_ERR(%struct.page* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load %struct.page*, %struct.page** %12, align 8
  %30 = call i32 @PTR_ERR(%struct.page* %29)
  store i32 %30, i32* %5, align 4
  br label %39

31:                                               ; preds = %4
  %32 = load %struct.page*, %struct.page** %12, align 8
  %33 = call i32 @page_address(%struct.page* %32)
  %34 = call i32 @strlen(i32 %33)
  %35 = load %struct.kstat*, %struct.kstat** %7, align 8
  %36 = getelementptr inbounds %struct.kstat, %struct.kstat* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.page*, %struct.page** %12, align 8
  %38 = call i32 @put_page(%struct.page* %37)
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %31, %28
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local %struct.inode* @d_backing_inode(%struct.dentry*) #1

declare dso_local i32 @generic_fillattr(%struct.inode*, %struct.kstat*) #1

declare dso_local %struct.page* @read_mapping_page(i32, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @page_address(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
