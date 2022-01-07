; ModuleID = '/home/carl/AnghaBench/linux/fs/verity/extr_open.c_ensure_verity_info.c'
source_filename = "/home/carl/AnghaBench/linux/fs/verity/extr_open.c_ensure_verity_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.inode*, %struct.fsverity_descriptor*, i32)* }
%struct.fsverity_descriptor = type { i32 }
%struct.fsverity_info = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"Error %d getting verity descriptor size\00", align 1
@FS_VERITY_MAX_DESCRIPTOR_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Verity descriptor is too large (%d bytes)\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Error %d reading verity descriptor\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*)* @ensure_verity_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ensure_verity_info(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.fsverity_info*, align 8
  %5 = alloca %struct.fsverity_descriptor*, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = call %struct.fsverity_info* @fsverity_get_info(%struct.inode* %7)
  store %struct.fsverity_info* %8, %struct.fsverity_info** %4, align 8
  %9 = load %struct.fsverity_info*, %struct.fsverity_info** %4, align 8
  %10 = icmp ne %struct.fsverity_info* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %85

12:                                               ; preds = %1
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32 (%struct.inode*, %struct.fsverity_descriptor*, i32)*, i32 (%struct.inode*, %struct.fsverity_descriptor*, i32)** %18, align 8
  %20 = load %struct.inode*, %struct.inode** %3, align 8
  %21 = call i32 %19(%struct.inode* %20, %struct.fsverity_descriptor* null, i32 0)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %12
  %25 = load %struct.inode*, %struct.inode** %3, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @fsverity_err(%struct.inode* %25, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %2, align 4
  br label %85

29:                                               ; preds = %12
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @FS_VERITY_MAX_DESCRIPTOR_SIZE, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load %struct.inode*, %struct.inode** %3, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @fsverity_err(%struct.inode* %34, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @EMSGSIZE, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %85

39:                                               ; preds = %29
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.fsverity_descriptor* @kmalloc(i32 %40, i32 %41)
  store %struct.fsverity_descriptor* %42, %struct.fsverity_descriptor** %5, align 8
  %43 = load %struct.fsverity_descriptor*, %struct.fsverity_descriptor** %5, align 8
  %44 = icmp ne %struct.fsverity_descriptor* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %85

48:                                               ; preds = %39
  %49 = load %struct.inode*, %struct.inode** %3, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32 (%struct.inode*, %struct.fsverity_descriptor*, i32)*, i32 (%struct.inode*, %struct.fsverity_descriptor*, i32)** %54, align 8
  %56 = load %struct.inode*, %struct.inode** %3, align 8
  %57 = load %struct.fsverity_descriptor*, %struct.fsverity_descriptor** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 %55(%struct.inode* %56, %struct.fsverity_descriptor* %57, i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %48
  %63 = load %struct.inode*, %struct.inode** %3, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @fsverity_err(%struct.inode* %63, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  br label %81

66:                                               ; preds = %48
  %67 = load %struct.inode*, %struct.inode** %3, align 8
  %68 = load %struct.fsverity_descriptor*, %struct.fsverity_descriptor** %5, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call %struct.fsverity_info* @fsverity_create_info(%struct.inode* %67, %struct.fsverity_descriptor* %68, i32 %69)
  store %struct.fsverity_info* %70, %struct.fsverity_info** %4, align 8
  %71 = load %struct.fsverity_info*, %struct.fsverity_info** %4, align 8
  %72 = call i64 @IS_ERR(%struct.fsverity_info* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %66
  %75 = load %struct.fsverity_info*, %struct.fsverity_info** %4, align 8
  %76 = call i32 @PTR_ERR(%struct.fsverity_info* %75)
  store i32 %76, i32* %6, align 4
  br label %81

77:                                               ; preds = %66
  %78 = load %struct.inode*, %struct.inode** %3, align 8
  %79 = load %struct.fsverity_info*, %struct.fsverity_info** %4, align 8
  %80 = call i32 @fsverity_set_info(%struct.inode* %78, %struct.fsverity_info* %79)
  store i32 0, i32* %6, align 4
  br label %81

81:                                               ; preds = %77, %74, %62
  %82 = load %struct.fsverity_descriptor*, %struct.fsverity_descriptor** %5, align 8
  %83 = call i32 @kfree(%struct.fsverity_descriptor* %82)
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %81, %45, %33, %24, %11
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.fsverity_info* @fsverity_get_info(%struct.inode*) #1

declare dso_local i32 @fsverity_err(%struct.inode*, i8*, i32) #1

declare dso_local %struct.fsverity_descriptor* @kmalloc(i32, i32) #1

declare dso_local %struct.fsverity_info* @fsverity_create_info(%struct.inode*, %struct.fsverity_descriptor*, i32) #1

declare dso_local i64 @IS_ERR(%struct.fsverity_info*) #1

declare dso_local i32 @PTR_ERR(%struct.fsverity_info*) #1

declare dso_local i32 @fsverity_set_info(%struct.inode*, %struct.fsverity_info*) #1

declare dso_local i32 @kfree(%struct.fsverity_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
