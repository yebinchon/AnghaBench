; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_dir.c_gfs2_dir_read_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_dir.c_gfs2_dir_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32, i32 }
%struct.gfs2_sbd = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.buffer_head = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@DIO_WAIT = common dso_local global i32 0, align 4
@GFS2_METATYPE_JD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, i32*, i32)* @gfs2_dir_read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_dir_read_data(%struct.gfs2_inode* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gfs2_inode*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.gfs2_sbd*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.buffer_head*, align 8
  %17 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %19 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %18, i32 0, i32 1
  %20 = call %struct.gfs2_sbd* @GFS2_SB(i32* %19)
  store %struct.gfs2_sbd* %20, %struct.gfs2_sbd** %8, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %21 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %22 = call i64 @gfs2_is_stuffed(%struct.gfs2_inode* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @gfs2_dir_read_stuffed(%struct.gfs2_inode* %25, i32* %26, i32 %27)
  store i32 %28, i32* %4, align 4
  br label %153

29:                                               ; preds = %3
  %30 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %31 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %32 = call i32 @gfs2_is_jdata(%struct.gfs2_inode* %31)
  %33 = call i64 @gfs2_assert_warn(%struct.gfs2_sbd* %30, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %153

38:                                               ; preds = %29
  store i64 0, i64* %9, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %41 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @do_div(i64 %39, i32 %42)
  %44 = sext i32 %43 to i64
  %45 = add i64 %44, 4
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %12, align 4
  br label %47

47:                                               ; preds = %116, %38
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %51, label %142

51:                                               ; preds = %47
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %13, align 4
  %54 = sub i32 %52, %53
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %15, align 4
  %56 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %57 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %12, align 4
  %61 = sub i32 %59, %60
  %62 = icmp ugt i32 %55, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %51
  %64 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %65 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %12, align 4
  %69 = sub i32 %67, %68
  store i32 %69, i32* %15, align 4
  br label %70

70:                                               ; preds = %63, %51
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %95, label %73

73:                                               ; preds = %70
  store i32 0, i32* %17, align 4
  %74 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %75 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %74, i32 0, i32 1
  %76 = load i64, i64* %9, align 8
  %77 = call i32 @gfs2_extent_map(i32* %75, i64 %76, i32* %17, i64* %10, i32* %11)
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %73
  %81 = load i64, i64* %10, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %80, %73
  br label %144

84:                                               ; preds = %80
  %85 = load i32, i32* %11, align 4
  %86 = icmp slt i32 %85, 1
  %87 = zext i1 %86 to i32
  %88 = call i32 @BUG_ON(i32 %87)
  %89 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %90 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i64, i64* %10, align 8
  %93 = load i32, i32* %11, align 4
  %94 = call %struct.buffer_head* @gfs2_meta_ra(i32 %91, i64 %92, i32 %93)
  store %struct.buffer_head* %94, %struct.buffer_head** %16, align 8
  br label %106

95:                                               ; preds = %70
  %96 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %97 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i64, i64* %10, align 8
  %100 = load i32, i32* @DIO_WAIT, align 4
  %101 = call i32 @gfs2_meta_read(i32 %98, i64 %99, i32 %100, i32 0, %struct.buffer_head** %16)
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %14, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %95
  br label %144

105:                                              ; preds = %95
  br label %106

106:                                              ; preds = %105, %84
  %107 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %108 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %109 = load i32, i32* @GFS2_METATYPE_JD, align 4
  %110 = call i32 @gfs2_metatype_check(%struct.gfs2_sbd* %107, %struct.buffer_head* %108, i32 %109)
  store i32 %110, i32* %14, align 4
  %111 = load i32, i32* %14, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %106
  %114 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %115 = call i32 @brelse(%struct.buffer_head* %114)
  br label %144

116:                                              ; preds = %106
  %117 = load i64, i64* %10, align 8
  %118 = add nsw i64 %117, 1
  store i64 %118, i64* %10, align 8
  %119 = load i32, i32* %11, align 4
  %120 = add nsw i32 %119, -1
  store i32 %120, i32* %11, align 4
  %121 = load i32*, i32** %6, align 8
  %122 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %123 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i32, i32* %12, align 4
  %126 = zext i32 %125 to i64
  %127 = add nsw i64 %124, %126
  %128 = load i32, i32* %15, align 4
  %129 = call i32 @memcpy(i32* %121, i64 %127, i32 %128)
  %130 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %131 = call i32 @brelse(%struct.buffer_head* %130)
  %132 = load i32, i32* %15, align 4
  %133 = zext i32 %132 to i64
  %134 = udiv i64 %133, 4
  %135 = load i32*, i32** %6, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 %134
  store i32* %136, i32** %6, align 8
  %137 = load i32, i32* %15, align 4
  %138 = load i32, i32* %13, align 4
  %139 = add i32 %138, %137
  store i32 %139, i32* %13, align 4
  %140 = load i64, i64* %9, align 8
  %141 = add nsw i64 %140, 1
  store i64 %141, i64* %9, align 8
  store i32 4, i32* %12, align 4
  br label %47

142:                                              ; preds = %47
  %143 = load i32, i32* %13, align 4
  store i32 %143, i32* %4, align 4
  br label %153

144:                                              ; preds = %113, %104, %83
  %145 = load i32, i32* %13, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %144
  %148 = load i32, i32* %13, align 4
  br label %151

149:                                              ; preds = %144
  %150 = load i32, i32* %14, align 4
  br label %151

151:                                              ; preds = %149, %147
  %152 = phi i32 [ %148, %147 ], [ %150, %149 ]
  store i32 %152, i32* %4, align 4
  br label %153

153:                                              ; preds = %151, %142, %35, %24
  %154 = load i32, i32* %4, align 4
  ret i32 %154
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(i32*) #1

declare dso_local i64 @gfs2_is_stuffed(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_dir_read_stuffed(%struct.gfs2_inode*, i32*, i32) #1

declare dso_local i64 @gfs2_assert_warn(%struct.gfs2_sbd*, i32) #1

declare dso_local i32 @gfs2_is_jdata(%struct.gfs2_inode*) #1

declare dso_local i32 @do_div(i64, i32) #1

declare dso_local i32 @gfs2_extent_map(i32*, i64, i32*, i64*, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.buffer_head* @gfs2_meta_ra(i32, i64, i32) #1

declare dso_local i32 @gfs2_meta_read(i32, i64, i32, i32, %struct.buffer_head**) #1

declare dso_local i32 @gfs2_metatype_check(%struct.gfs2_sbd*, %struct.buffer_head*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
