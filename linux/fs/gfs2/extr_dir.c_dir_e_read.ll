; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_dir.c_dir_e_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_dir.c_dir_e_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dir_context = type { i32 }
%struct.file_ra_state = type { i64 }
%struct.gfs2_inode = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dir_context*, %struct.file_ra_state*)* @dir_e_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dir_e_read(%struct.inode* %0, %struct.dir_context* %1, %struct.file_ra_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dir_context*, align 8
  %7 = alloca %struct.file_ra_state*, align 8
  %8 = alloca %struct.gfs2_inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dir_context* %1, %struct.dir_context** %6, align 8
  store %struct.file_ra_state* %2, %struct.file_ra_state** %7, align 8
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %17)
  store %struct.gfs2_inode* %18, %struct.gfs2_inode** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %19 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %20 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @BIT(i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.dir_context*, %struct.dir_context** %6, align 8
  %24 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @gfs2_dir_offset2hash(i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %29 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sub i32 32, %30
  %32 = ashr i32 %27, %31
  store i32 %32, i32* %12, align 4
  %33 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %34 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %3
  %38 = load %struct.file_ra_state*, %struct.file_ra_state** %7, align 8
  %39 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  br label %40

40:                                               ; preds = %37, %3
  %41 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %42 = call i32* @gfs2_dir_get_hash_table(%struct.gfs2_inode* %41)
  store i32* %42, i32** %13, align 8
  %43 = load i32*, i32** %13, align 8
  %44 = call i64 @IS_ERR(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32*, i32** %13, align 8
  %48 = call i32 @PTR_ERR(i32* %47)
  store i32 %48, i32* %4, align 4
  br label %92

49:                                               ; preds = %40
  %50 = load %struct.inode*, %struct.inode** %5, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load %struct.file_ra_state*, %struct.file_ra_state** %7, align 8
  %54 = call i32 @gfs2_dir_readahead(%struct.inode* %50, i32 %51, i32 %52, %struct.file_ra_state* %53)
  br label %55

55:                                               ; preds = %72, %49
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %86

59:                                               ; preds = %55
  %60 = load %struct.inode*, %struct.inode** %5, align 8
  %61 = load %struct.dir_context*, %struct.dir_context** %6, align 8
  %62 = load i32*, i32** %13, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @be64_to_cpu(i32 %66)
  %68 = call i32 @gfs2_dir_read_leaf(%struct.inode* %60, %struct.dir_context* %61, i32* %14, i32* %16, i32 %67)
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %15, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %59
  br label %86

72:                                               ; preds = %59
  %73 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %74 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %16, align 4
  %77 = sub i32 %75, %76
  %78 = call i32 @BIT(i32 %77)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %10, align 4
  %81 = sub nsw i32 %80, 1
  %82 = xor i32 %81, -1
  %83 = and i32 %79, %82
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %83, %84
  store i32 %85, i32* %12, align 4
  br label %55

86:                                               ; preds = %71, %55
  %87 = load i32, i32* %15, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  store i32 0, i32* %15, align 4
  br label %90

90:                                               ; preds = %89, %86
  %91 = load i32, i32* %15, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %90, %46
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @gfs2_dir_offset2hash(i32) #1

declare dso_local i32* @gfs2_dir_get_hash_table(%struct.gfs2_inode*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @gfs2_dir_readahead(%struct.inode*, i32, i32, %struct.file_ra_state*) #1

declare dso_local i32 @gfs2_dir_read_leaf(%struct.inode*, %struct.dir_context*, i32*, i32*, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
