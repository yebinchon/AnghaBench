; ModuleID = '/home/carl/AnghaBench/linux/fs/kernfs/extr_file.c___kernfs_create_file.c'
source_filename = "/home/carl/AnghaBench/linux/fs/kernfs/extr_file.c___kernfs_create_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_node = type { i32, i32, i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.kernfs_ops* }
%struct.kernfs_ops = type { i64, i64, i64 }
%struct.lock_class_key = type { i32 }

@KERNFS_FILE = common dso_local global i32 0, align 4
@S_IALLUGO = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KERNFS_HAS_SEQ_SHOW = common dso_local global i32 0, align 4
@KERNFS_HAS_MMAP = common dso_local global i32 0, align 4
@KERNFS_HAS_RELEASE = common dso_local global i32 0, align 4
@KERNFS_LOCKDEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kernfs_node* @__kernfs_create_file(%struct.kernfs_node* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.kernfs_ops* %6, i8* %7, i8* %8, %struct.lock_class_key* %9) #0 {
  %11 = alloca %struct.kernfs_node*, align 8
  %12 = alloca %struct.kernfs_node*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.kernfs_ops*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.lock_class_key*, align 8
  %22 = alloca %struct.kernfs_node*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.kernfs_node* %0, %struct.kernfs_node** %12, align 8
  store i8* %1, i8** %13, align 8
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store %struct.kernfs_ops* %6, %struct.kernfs_ops** %18, align 8
  store i8* %7, i8** %19, align 8
  store i8* %8, i8** %20, align 8
  store %struct.lock_class_key* %9, %struct.lock_class_key** %21, align 8
  %25 = load i32, i32* @KERNFS_FILE, align 4
  store i32 %25, i32* %23, align 4
  %26 = load %struct.kernfs_node*, %struct.kernfs_node** %12, align 8
  %27 = load i8*, i8** %13, align 8
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* @S_IALLUGO, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @S_IFREG, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* %16, align 4
  %35 = load i32, i32* %23, align 4
  %36 = call %struct.kernfs_node* @kernfs_new_node(%struct.kernfs_node* %26, i8* %27, i32 %32, i32 %33, i32 %34, i32 %35)
  store %struct.kernfs_node* %36, %struct.kernfs_node** %22, align 8
  %37 = load %struct.kernfs_node*, %struct.kernfs_node** %22, align 8
  %38 = icmp ne %struct.kernfs_node* %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %10
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  %42 = call %struct.kernfs_node* @ERR_PTR(i32 %41)
  store %struct.kernfs_node* %42, %struct.kernfs_node** %11, align 8
  br label %102

43:                                               ; preds = %10
  %44 = load %struct.kernfs_ops*, %struct.kernfs_ops** %18, align 8
  %45 = load %struct.kernfs_node*, %struct.kernfs_node** %22, align 8
  %46 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store %struct.kernfs_ops* %44, %struct.kernfs_ops** %47, align 8
  %48 = load i32, i32* %17, align 4
  %49 = load %struct.kernfs_node*, %struct.kernfs_node** %22, align 8
  %50 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  %52 = load i8*, i8** %20, align 8
  %53 = load %struct.kernfs_node*, %struct.kernfs_node** %22, align 8
  %54 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %53, i32 0, i32 3
  store i8* %52, i8** %54, align 8
  %55 = load i8*, i8** %19, align 8
  %56 = load %struct.kernfs_node*, %struct.kernfs_node** %22, align 8
  %57 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %56, i32 0, i32 2
  store i8* %55, i8** %57, align 8
  %58 = load %struct.kernfs_ops*, %struct.kernfs_ops** %18, align 8
  %59 = getelementptr inbounds %struct.kernfs_ops, %struct.kernfs_ops* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %43
  %63 = load i32, i32* @KERNFS_HAS_SEQ_SHOW, align 4
  %64 = load %struct.kernfs_node*, %struct.kernfs_node** %22, align 8
  %65 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  br label %68

68:                                               ; preds = %62, %43
  %69 = load %struct.kernfs_ops*, %struct.kernfs_ops** %18, align 8
  %70 = getelementptr inbounds %struct.kernfs_ops, %struct.kernfs_ops* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load i32, i32* @KERNFS_HAS_MMAP, align 4
  %75 = load %struct.kernfs_node*, %struct.kernfs_node** %22, align 8
  %76 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %73, %68
  %80 = load %struct.kernfs_ops*, %struct.kernfs_ops** %18, align 8
  %81 = getelementptr inbounds %struct.kernfs_ops, %struct.kernfs_ops* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load i32, i32* @KERNFS_HAS_RELEASE, align 4
  %86 = load %struct.kernfs_node*, %struct.kernfs_node** %22, align 8
  %87 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %84, %79
  %91 = load %struct.kernfs_node*, %struct.kernfs_node** %22, align 8
  %92 = call i32 @kernfs_add_one(%struct.kernfs_node* %91)
  store i32 %92, i32* %24, align 4
  %93 = load i32, i32* %24, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load %struct.kernfs_node*, %struct.kernfs_node** %22, align 8
  %97 = call i32 @kernfs_put(%struct.kernfs_node* %96)
  %98 = load i32, i32* %24, align 4
  %99 = call %struct.kernfs_node* @ERR_PTR(i32 %98)
  store %struct.kernfs_node* %99, %struct.kernfs_node** %11, align 8
  br label %102

100:                                              ; preds = %90
  %101 = load %struct.kernfs_node*, %struct.kernfs_node** %22, align 8
  store %struct.kernfs_node* %101, %struct.kernfs_node** %11, align 8
  br label %102

102:                                              ; preds = %100, %95, %39
  %103 = load %struct.kernfs_node*, %struct.kernfs_node** %11, align 8
  ret %struct.kernfs_node* %103
}

declare dso_local %struct.kernfs_node* @kernfs_new_node(%struct.kernfs_node*, i8*, i32, i32, i32, i32) #1

declare dso_local %struct.kernfs_node* @ERR_PTR(i32) #1

declare dso_local i32 @kernfs_add_one(%struct.kernfs_node*) #1

declare dso_local i32 @kernfs_put(%struct.kernfs_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
