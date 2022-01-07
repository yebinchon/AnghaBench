; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_iomap_end.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c_ext4_iomap_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64, i32 }
%struct.iomap = type { i64, i64 }
%struct.TYPE_2__ = type { i32 }

@IOMAP_WRITE = common dso_local global i32 0, align 4
@IOMAP_FAULT = common dso_local global i32 0, align 4
@EXT4_HT_INODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32, i32, i32, %struct.iomap*)* @ext4_iomap_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_iomap_end(%struct.inode* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.iomap* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.iomap*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.iomap* %5, %struct.iomap** %13, align 8
  store i32 0, i32* %14, align 4
  %20 = load %struct.inode*, %struct.inode** %8, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* @IOMAP_WRITE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %6
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @IOMAP_FAULT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27, %6
  store i32 0, i32* %7, align 4
  br label %126

33:                                               ; preds = %27
  %34 = load %struct.inode*, %struct.inode** %8, align 8
  %35 = load i32, i32* @EXT4_HT_INODE, align 4
  %36 = call i32* @ext4_journal_start(%struct.inode* %34, i32 %35, i32 2)
  store i32* %36, i32** %15, align 8
  %37 = load i32*, i32** %15, align 8
  %38 = call i64 @IS_ERR(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32*, i32** %15, align 8
  %42 = call i32 @PTR_ERR(i32* %41)
  store i32 %42, i32* %14, align 4
  br label %115

43:                                               ; preds = %33
  %44 = load %struct.inode*, %struct.inode** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %45, %46
  %48 = call i64 @ext4_update_inode_size(%struct.inode* %44, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load i32*, i32** %15, align 8
  %52 = load %struct.inode*, %struct.inode** %8, align 8
  %53 = call i32 @ext4_mark_inode_dirty(i32* %51, %struct.inode* %52)
  br label %54

54:                                               ; preds = %50, %43
  %55 = load %struct.iomap*, %struct.iomap** %13, align 8
  %56 = getelementptr inbounds %struct.iomap, %struct.iomap* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.iomap*, %struct.iomap** %13, align 8
  %59 = getelementptr inbounds %struct.iomap, %struct.iomap* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %57, %60
  %62 = load %struct.inode*, %struct.inode** %8, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %16, align 4
  %66 = shl i32 1, %65
  %67 = call i64 @ALIGN(i32 %64, i32 %66)
  %68 = icmp sgt i64 %61, %67
  br i1 %68, label %69, label %89

69:                                               ; preds = %54
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %70, %71
  %73 = load i32, i32* %16, align 4
  %74 = ashr i32 %72, %73
  store i32 %74, i32* %18, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %75, %76
  %78 = load i32, i32* %16, align 4
  %79 = ashr i32 %77, %78
  store i32 %79, i32* %19, align 4
  %80 = load i32, i32* %18, align 4
  %81 = load i32, i32* %19, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %69
  %84 = load %struct.inode*, %struct.inode** %8, align 8
  %85 = call i64 @ext4_can_truncate(%struct.inode* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  store i32 1, i32* %17, align 4
  br label %88

88:                                               ; preds = %87, %83, %69
  br label %89

89:                                               ; preds = %88, %54
  %90 = load i32, i32* %17, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %107, label %92

92:                                               ; preds = %89
  %93 = load %struct.inode*, %struct.inode** %8, align 8
  %94 = getelementptr inbounds %struct.inode, %struct.inode* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %92
  %98 = load %struct.inode*, %struct.inode** %8, align 8
  %99 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %98)
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = call i32 @list_empty(i32* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %97
  %104 = load i32*, i32** %15, align 8
  %105 = load %struct.inode*, %struct.inode** %8, align 8
  %106 = call i32 @ext4_orphan_del(i32* %104, %struct.inode* %105)
  br label %107

107:                                              ; preds = %103, %97, %92, %89
  %108 = load i32*, i32** %15, align 8
  %109 = call i32 @ext4_journal_stop(i32* %108)
  %110 = load i32, i32* %17, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %124

112:                                              ; preds = %107
  %113 = load %struct.inode*, %struct.inode** %8, align 8
  %114 = call i32 @ext4_truncate_failed_write(%struct.inode* %113)
  br label %115

115:                                              ; preds = %112, %40
  %116 = load %struct.inode*, %struct.inode** %8, align 8
  %117 = getelementptr inbounds %struct.inode, %struct.inode* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load %struct.inode*, %struct.inode** %8, align 8
  %122 = call i32 @ext4_orphan_del(i32* null, %struct.inode* %121)
  br label %123

123:                                              ; preds = %120, %115
  br label %124

124:                                              ; preds = %123, %107
  %125 = load i32, i32* %14, align 4
  store i32 %125, i32* %7, align 4
  br label %126

126:                                              ; preds = %124, %32
  %127 = load i32, i32* %7, align 4
  ret i32 %127
}

declare dso_local i32* @ext4_journal_start(%struct.inode*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i64 @ext4_update_inode_size(%struct.inode*, i32) #1

declare dso_local i32 @ext4_mark_inode_dirty(i32*, %struct.inode*) #1

declare dso_local i64 @ALIGN(i32, i32) #1

declare dso_local i64 @ext4_can_truncate(%struct.inode*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local %struct.TYPE_2__* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @ext4_orphan_del(i32*, %struct.inode*) #1

declare dso_local i32 @ext4_journal_stop(i32*) #1

declare dso_local i32 @ext4_truncate_failed_write(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
