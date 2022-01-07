; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_map.c_hpfs_load_hotfix_map.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_map.c_hpfs_load_hotfix_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.hpfs_spare_block = type { i32, i32, i32 }
%struct.quad_buffer_head = type { i32 }
%struct.TYPE_2__ = type { i32, i8**, i8** }

@.str = private unnamed_addr constant [41 x i8] c"invalid number of hotfixes: %u, used: %u\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"can't load hotfix map\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hpfs_load_hotfix_map(%struct.super_block* %0, %struct.hpfs_spare_block* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.hpfs_spare_block*, align 8
  %5 = alloca %struct.quad_buffer_head, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.hpfs_spare_block* %1, %struct.hpfs_spare_block** %4, align 8
  %10 = load %struct.hpfs_spare_block*, %struct.hpfs_spare_block** %4, align 8
  %11 = getelementptr inbounds %struct.hpfs_spare_block, %struct.hpfs_spare_block* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i8* @le32_to_cpu(i32 %12)
  %14 = ptrtoint i8* %13 to i32
  store i32 %14, i32* %7, align 4
  %15 = load %struct.hpfs_spare_block*, %struct.hpfs_spare_block** %4, align 8
  %16 = getelementptr inbounds %struct.hpfs_spare_block, %struct.hpfs_spare_block* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @le32_to_cpu(i32 %17)
  %19 = ptrtoint i8* %18 to i32
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp sgt i32 %20, 256
  br i1 %21, label %26, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %22, %2
  %27 = load %struct.super_block*, %struct.super_block** %3, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 (%struct.super_block*, i8*, ...) @hpfs_error(%struct.super_block* %27, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29)
  br label %85

31:                                               ; preds = %22
  %32 = load %struct.super_block*, %struct.super_block** %3, align 8
  %33 = load %struct.hpfs_spare_block*, %struct.hpfs_spare_block** %4, align 8
  %34 = getelementptr inbounds %struct.hpfs_spare_block, %struct.hpfs_spare_block* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @le32_to_cpu(i32 %35)
  %37 = call i32* @hpfs_map_4sectors(%struct.super_block* %32, i8* %36, %struct.quad_buffer_head* %5, i32 0)
  store i32* %37, i32** %6, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %31
  %40 = load %struct.super_block*, %struct.super_block** %3, align 8
  %41 = call i32 (%struct.super_block*, i8*, ...) @hpfs_error(%struct.super_block* %40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %85

42:                                               ; preds = %31
  store i32 0, i32* %9, align 4
  br label %43

43:                                               ; preds = %76, %42
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %79

47:                                               ; preds = %43
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %9, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @le32_to_cpu(i32 %52)
  %54 = load %struct.super_block*, %struct.super_block** %3, align 8
  %55 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %54)
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i8**, i8*** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  store i8* %53, i8** %60, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %9, align 4
  %64 = add i32 %62, %63
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %61, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @le32_to_cpu(i32 %67)
  %69 = load %struct.super_block*, %struct.super_block** %3, align 8
  %70 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %69)
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i8**, i8*** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %72, i64 %74
  store i8* %68, i8** %75, align 8
  br label %76

76:                                               ; preds = %47
  %77 = load i32, i32* %9, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %9, align 4
  br label %43

79:                                               ; preds = %43
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.super_block*, %struct.super_block** %3, align 8
  %82 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %81)
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 8
  %84 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %5)
  br label %85

85:                                               ; preds = %79, %39, %26
  ret void
}

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @hpfs_error(%struct.super_block*, i8*, ...) #1

declare dso_local i32* @hpfs_map_4sectors(%struct.super_block*, i8*, %struct.quad_buffer_head*, i32) #1

declare dso_local %struct.TYPE_2__* @hpfs_sb(%struct.super_block*) #1

declare dso_local i32 @hpfs_brelse4(%struct.quad_buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
