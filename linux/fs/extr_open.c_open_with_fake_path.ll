; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_open.c_open_with_fake_path.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_open.c_open_with_fake_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.path }
%struct.path = type { i32 }
%struct.inode = type { i32 }
%struct.cred = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.file* @open_with_fake_path(%struct.path* %0, i32 %1, %struct.inode* %2, %struct.cred* %3) #0 {
  %5 = alloca %struct.path*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.cred*, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca i32, align 4
  store %struct.path* %0, %struct.path** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.inode* %2, %struct.inode** %7, align 8
  store %struct.cred* %3, %struct.cred** %8, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.cred*, %struct.cred** %8, align 8
  %13 = call %struct.file* @alloc_empty_file_noaccount(i32 %11, %struct.cred* %12)
  store %struct.file* %13, %struct.file** %9, align 8
  %14 = load %struct.file*, %struct.file** %9, align 8
  %15 = call i32 @IS_ERR(%struct.file* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %34, label %17

17:                                               ; preds = %4
  %18 = load %struct.file*, %struct.file** %9, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 0
  %20 = load %struct.path*, %struct.path** %5, align 8
  %21 = bitcast %struct.path* %19 to i8*
  %22 = bitcast %struct.path* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 4, i1 false)
  %23 = load %struct.file*, %struct.file** %9, align 8
  %24 = load %struct.inode*, %struct.inode** %7, align 8
  %25 = call i32 @do_dentry_open(%struct.file* %23, %struct.inode* %24, i32* null)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %17
  %29 = load %struct.file*, %struct.file** %9, align 8
  %30 = call i32 @fput(%struct.file* %29)
  %31 = load i32, i32* %10, align 4
  %32 = call %struct.file* @ERR_PTR(i32 %31)
  store %struct.file* %32, %struct.file** %9, align 8
  br label %33

33:                                               ; preds = %28, %17
  br label %34

34:                                               ; preds = %33, %4
  %35 = load %struct.file*, %struct.file** %9, align 8
  ret %struct.file* %35
}

declare dso_local %struct.file* @alloc_empty_file_noaccount(i32, %struct.cred*) #1

declare dso_local i32 @IS_ERR(%struct.file*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @do_dentry_open(%struct.file*, %struct.inode*, i32*) #1

declare dso_local i32 @fput(%struct.file*) #1

declare dso_local %struct.file* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
