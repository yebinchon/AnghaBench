; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3acl.c_nfs3_list_one_acl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3acl.c_nfs3_list_one_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.posix_acl = type { i32 }

@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i8*, i8*, i64, i64*)* @nfs3_list_one_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs3_list_one_acl(%struct.inode* %0, i32 %1, i8* %2, i8* %3, i64 %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.posix_acl*, align 8
  %15 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64* %5, i64** %13, align 8
  %16 = load i8*, i8** %11, align 8
  %17 = load i64*, i64** %13, align 8
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr i8, i8* %16, i64 %18
  store i8* %19, i8** %15, align 8
  %20 = load %struct.inode*, %struct.inode** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call %struct.posix_acl* @get_acl(%struct.inode* %20, i32 %21)
  store %struct.posix_acl* %22, %struct.posix_acl** %14, align 8
  %23 = load %struct.posix_acl*, %struct.posix_acl** %14, align 8
  %24 = call i64 @IS_ERR_OR_NULL(%struct.posix_acl* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %53

27:                                               ; preds = %6
  %28 = load %struct.posix_acl*, %struct.posix_acl** %14, align 8
  %29 = call i32 @posix_acl_release(%struct.posix_acl* %28)
  %30 = load i8*, i8** %10, align 8
  %31 = call i64 @strlen(i8* %30)
  %32 = load i64*, i64** %13, align 8
  %33 = load i64, i64* %32, align 8
  %34 = add i64 %33, %31
  store i64 %34, i64* %32, align 8
  %35 = load i64*, i64** %13, align 8
  %36 = load i64, i64* %35, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %35, align 8
  %38 = load i64, i64* %12, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %27
  store i32 0, i32* %7, align 4
  br label %53

41:                                               ; preds = %27
  %42 = load i64*, i64** %13, align 8
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %12, align 8
  %45 = icmp ugt i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @ERANGE, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %7, align 4
  br label %53

49:                                               ; preds = %41
  %50 = load i8*, i8** %15, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = call i32 @strcpy(i8* %50, i8* %51)
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %49, %46, %40, %26
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local %struct.posix_acl* @get_acl(%struct.inode*, i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.posix_acl*) #1

declare dso_local i32 @posix_acl_release(%struct.posix_acl*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
