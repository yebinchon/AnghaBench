; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_realpath.c_tomoyo_get_absolute_path.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_realpath.c_tomoyo_get_absolute_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i32 }
%struct.inode = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.path*, i8*, i32)* @tomoyo_get_absolute_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @tomoyo_get_absolute_path(%struct.path* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.path*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.inode*, align 8
  store %struct.path* %0, %struct.path** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  %11 = call i8* @ERR_PTR(i32 %10)
  store i8* %11, i8** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp sge i32 %12, 256
  br i1 %13, label %14, label %60

14:                                               ; preds = %3
  %15 = load %struct.path*, %struct.path** %4, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sub nsw i32 %17, 1
  %19 = call i8* @d_absolute_path(%struct.path* %15, i8* %16, i32 %18)
  store i8* %19, i8** %7, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @IS_ERR(i8* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %59, label %23

23:                                               ; preds = %14
  %24 = load i8*, i8** %7, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 47
  br i1 %27, label %28, label %59

28:                                               ; preds = %23
  %29 = load i8*, i8** %7, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %59

34:                                               ; preds = %28
  %35 = load %struct.path*, %struct.path** %4, align 8
  %36 = getelementptr inbounds %struct.path, %struct.path* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.inode* @d_backing_inode(i32 %37)
  store %struct.inode* %38, %struct.inode** %8, align 8
  %39 = load %struct.inode*, %struct.inode** %8, align 8
  %40 = icmp ne %struct.inode* %39, null
  br i1 %40, label %41, label %58

41:                                               ; preds = %34
  %42 = load %struct.inode*, %struct.inode** %8, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @S_ISDIR(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %41
  %48 = load i8*, i8** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sub nsw i32 %49, 2
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %48, i64 %51
  store i8 47, i8* %52, align 1
  %53 = load i8*, i8** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %53, i64 %56
  store i8 0, i8* %57, align 1
  br label %58

58:                                               ; preds = %47, %41, %34
  br label %59

59:                                               ; preds = %58, %28, %23, %14
  br label %60

60:                                               ; preds = %59, %3
  %61 = load i8*, i8** %7, align 8
  ret i8* %61
}

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i8* @d_absolute_path(%struct.path*, i8*, i32) #1

declare dso_local i32 @IS_ERR(i8*) #1

declare dso_local %struct.inode* @d_backing_inode(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
