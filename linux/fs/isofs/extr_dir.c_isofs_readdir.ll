; ModuleID = '/home/carl/AnghaBench/linux/fs/isofs/extr_dir.c_isofs_readdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/isofs/extr_dir.c_isofs_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.dir_context = type { i32 }
%struct.iso_directory_record = type { i32 }
%struct.inode = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.dir_context*)* @isofs_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isofs_readdir(%struct.file* %0, %struct.dir_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.dir_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.iso_directory_record*, align 8
  %9 = alloca %struct.inode*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.dir_context* %1, %struct.dir_context** %5, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = call %struct.inode* @file_inode(%struct.file* %10)
  store %struct.inode* %11, %struct.inode** %9, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i64 @__get_free_page(i32 %12)
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %34

20:                                               ; preds = %2
  %21 = load i8*, i8** %7, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1024
  %23 = bitcast i8* %22 to %struct.iso_directory_record*
  store %struct.iso_directory_record* %23, %struct.iso_directory_record** %8, align 8
  %24 = load %struct.inode*, %struct.inode** %9, align 8
  %25 = load %struct.file*, %struct.file** %4, align 8
  %26 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load %struct.iso_directory_record*, %struct.iso_directory_record** %8, align 8
  %29 = call i32 @do_isofs_readdir(%struct.inode* %24, %struct.file* %25, %struct.dir_context* %26, i8* %27, %struct.iso_directory_record* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = ptrtoint i8* %30 to i64
  %32 = call i32 @free_page(i64 %31)
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %20, %17
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i32 @do_isofs_readdir(%struct.inode*, %struct.file*, %struct.dir_context*, i8*, %struct.iso_directory_record*) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
