; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_super.c_nfs_show_devname.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_super.c_nfs_show_devname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.dentry = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c" \09\0A\\\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_show_devname(%struct.seq_file* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i64 @__get_free_page(i32 %10)
  %12 = inttoptr i64 %11 to i8*
  store i8* %12, i8** %6, align 8
  store i32 0, i32* %9, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %38

18:                                               ; preds = %2
  %19 = load %struct.dentry*, %struct.dentry** %5, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = call i8* @nfs_path(i8** %8, %struct.dentry* %19, i8* %20, i32 %21, i32 0)
  store i8* %22, i8** %7, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i64 @IS_ERR(i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @PTR_ERR(i8* %27)
  store i32 %28, i32* %9, align 4
  br label %33

29:                                               ; preds = %18
  %30 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @seq_escape(%struct.seq_file* %30, i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %29, %26
  %34 = load i8*, i8** %6, align 8
  %35 = ptrtoint i8* %34 to i64
  %36 = call i32 @free_page(i64 %35)
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %33, %15
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i8* @nfs_path(i8**, %struct.dentry*, i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @seq_escape(%struct.seq_file*, i8*, i8*) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
