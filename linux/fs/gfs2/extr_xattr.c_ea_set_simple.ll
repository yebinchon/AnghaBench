; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_xattr.c_ea_set_simple.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_xattr.c_ea_set_simple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.gfs2_ea_header = type { i64 }
%struct.ea_set = type { i32, %struct.TYPE_5__*, %struct.gfs2_ea_header*, %struct.buffer_head* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@GFS2_EATYPE_UNUSED = common dso_local global i64 0, align 8
@ea_set_simple_alloc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, %struct.buffer_head*, %struct.gfs2_ea_header*, %struct.gfs2_ea_header*, i8*)* @ea_set_simple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ea_set_simple(%struct.gfs2_inode* %0, %struct.buffer_head* %1, %struct.gfs2_ea_header* %2, %struct.gfs2_ea_header* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.gfs2_inode*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.gfs2_ea_header*, align 8
  %10 = alloca %struct.gfs2_ea_header*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.ea_set*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %7, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %8, align 8
  store %struct.gfs2_ea_header* %2, %struct.gfs2_ea_header** %9, align 8
  store %struct.gfs2_ea_header* %3, %struct.gfs2_ea_header** %10, align 8
  store i8* %4, i8** %11, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = bitcast i8* %17 to %struct.ea_set*
  store %struct.ea_set* %18, %struct.ea_set** %12, align 8
  %19 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %20 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %19, i32 0, i32 0
  %21 = call %struct.TYPE_4__* @GFS2_SB(i32* %20)
  %22 = load %struct.ea_set*, %struct.ea_set** %12, align 8
  %23 = getelementptr inbounds %struct.ea_set, %struct.ea_set* %22, i32 0, i32 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ea_set*, %struct.ea_set** %12, align 8
  %28 = getelementptr inbounds %struct.ea_set, %struct.ea_set* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ea_calc_size(%struct.TYPE_4__* %21, i32 %26, i32 %31, i32* %13)
  store i32 %32, i32* %14, align 4
  %33 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %9, align 8
  %34 = getelementptr inbounds %struct.gfs2_ea_header, %struct.gfs2_ea_header* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @GFS2_EATYPE_UNUSED, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %62

38:                                               ; preds = %5
  %39 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %9, align 8
  %40 = call i32 @GFS2_EA_REC_LEN(%struct.gfs2_ea_header* %39)
  %41 = load i32, i32* %13, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 0, i32* %6, align 4
  br label %122

44:                                               ; preds = %38
  %45 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %9, align 8
  %46 = call i32 @GFS2_EA_IS_STUFFED(%struct.gfs2_ea_header* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %44
  %49 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %50 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %51 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %9, align 8
  %52 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %10, align 8
  %53 = call i32 @ea_remove_unstuffed(%struct.gfs2_inode* %49, %struct.buffer_head* %50, %struct.gfs2_ea_header* %51, %struct.gfs2_ea_header* %52, i32 1)
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %15, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i32, i32* %15, align 4
  store i32 %57, i32* %6, align 4
  br label %122

58:                                               ; preds = %48
  br label %59

59:                                               ; preds = %58, %44
  %60 = load %struct.ea_set*, %struct.ea_set** %12, align 8
  %61 = getelementptr inbounds %struct.ea_set, %struct.ea_set* %60, i32 0, i32 0
  store i32 0, i32* %61, align 8
  br label %75

62:                                               ; preds = %5
  %63 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %9, align 8
  %64 = call i32 @GFS2_EA_REC_LEN(%struct.gfs2_ea_header* %63)
  %65 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %9, align 8
  %66 = call i32 @GFS2_EA_SIZE(%struct.gfs2_ea_header* %65)
  %67 = sub i32 %64, %66
  %68 = load i32, i32* %13, align 4
  %69 = icmp uge i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %62
  %71 = load %struct.ea_set*, %struct.ea_set** %12, align 8
  %72 = getelementptr inbounds %struct.ea_set, %struct.ea_set* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  br label %74

73:                                               ; preds = %62
  store i32 0, i32* %6, align 4
  br label %122

74:                                               ; preds = %70
  br label %75

75:                                               ; preds = %74, %59
  %76 = load i32, i32* %14, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %75
  %79 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %80 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %81 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %9, align 8
  %82 = load %struct.ea_set*, %struct.ea_set** %12, align 8
  %83 = call i32 @ea_set_simple_noalloc(%struct.gfs2_inode* %79, %struct.buffer_head* %80, %struct.gfs2_ea_header* %81, %struct.ea_set* %82)
  store i32 %83, i32* %15, align 4
  %84 = load i32, i32* %15, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %78
  %87 = load i32, i32* %15, align 4
  store i32 %87, i32* %6, align 4
  br label %122

88:                                               ; preds = %78
  br label %121

89:                                               ; preds = %75
  %90 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %91 = load %struct.ea_set*, %struct.ea_set** %12, align 8
  %92 = getelementptr inbounds %struct.ea_set, %struct.ea_set* %91, i32 0, i32 3
  store %struct.buffer_head* %90, %struct.buffer_head** %92, align 8
  %93 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %9, align 8
  %94 = load %struct.ea_set*, %struct.ea_set** %12, align 8
  %95 = getelementptr inbounds %struct.ea_set, %struct.ea_set* %94, i32 0, i32 2
  store %struct.gfs2_ea_header* %93, %struct.gfs2_ea_header** %95, align 8
  %96 = load %struct.ea_set*, %struct.ea_set** %12, align 8
  %97 = getelementptr inbounds %struct.ea_set, %struct.ea_set* %96, i32 0, i32 1
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %102 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %101, i32 0, i32 0
  %103 = call %struct.TYPE_4__* @GFS2_SB(i32* %102)
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @DIV_ROUND_UP(i32 %100, i32 %105)
  %107 = add nsw i32 2, %106
  store i32 %107, i32* %16, align 4
  %108 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %109 = load %struct.ea_set*, %struct.ea_set** %12, align 8
  %110 = getelementptr inbounds %struct.ea_set, %struct.ea_set* %109, i32 0, i32 1
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* @ea_set_simple_alloc, align 4
  %114 = load %struct.ea_set*, %struct.ea_set** %12, align 8
  %115 = call i32 @ea_alloc_skeleton(%struct.gfs2_inode* %108, %struct.TYPE_5__* %111, i32 %112, i32 %113, %struct.ea_set* %114)
  store i32 %115, i32* %15, align 4
  %116 = load i32, i32* %15, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %89
  %119 = load i32, i32* %15, align 4
  store i32 %119, i32* %6, align 4
  br label %122

120:                                              ; preds = %89
  br label %121

121:                                              ; preds = %120, %88
  store i32 1, i32* %6, align 4
  br label %122

122:                                              ; preds = %121, %118, %86, %73, %56, %43
  %123 = load i32, i32* %6, align 4
  ret i32 %123
}

declare dso_local i32 @ea_calc_size(%struct.TYPE_4__*, i32, i32, i32*) #1

declare dso_local %struct.TYPE_4__* @GFS2_SB(i32*) #1

declare dso_local i32 @GFS2_EA_REC_LEN(%struct.gfs2_ea_header*) #1

declare dso_local i32 @GFS2_EA_IS_STUFFED(%struct.gfs2_ea_header*) #1

declare dso_local i32 @ea_remove_unstuffed(%struct.gfs2_inode*, %struct.buffer_head*, %struct.gfs2_ea_header*, %struct.gfs2_ea_header*, i32) #1

declare dso_local i32 @GFS2_EA_SIZE(%struct.gfs2_ea_header*) #1

declare dso_local i32 @ea_set_simple_noalloc(%struct.gfs2_inode*, %struct.buffer_head*, %struct.gfs2_ea_header*, %struct.ea_set*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @ea_alloc_skeleton(%struct.gfs2_inode*, %struct.TYPE_5__*, i32, i32, %struct.ea_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
