; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_blocklayout.c_verify_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_blocklayout.c_verify_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnfs_block_extent = type { i64, i64, i64 }
%struct.layout_verification = type { i64, i64, i64, i64 }

@IOMODE_READ = common dso_local global i64 0, align 8
@PNFS_BLOCK_READWRITE_DATA = common dso_local global i64 0, align 8
@PNFS_BLOCK_INVALID_DATA = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@PNFS_BLOCK_READ_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnfs_block_extent*, %struct.layout_verification*)* @verify_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_extent(%struct.pnfs_block_extent* %0, %struct.layout_verification* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pnfs_block_extent*, align 8
  %5 = alloca %struct.layout_verification*, align 8
  store %struct.pnfs_block_extent* %0, %struct.pnfs_block_extent** %4, align 8
  store %struct.layout_verification* %1, %struct.layout_verification** %5, align 8
  %6 = load %struct.layout_verification*, %struct.layout_verification** %5, align 8
  %7 = getelementptr inbounds %struct.layout_verification, %struct.layout_verification* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @IOMODE_READ, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %45

11:                                               ; preds = %2
  %12 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %4, align 8
  %13 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PNFS_BLOCK_READWRITE_DATA, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %11
  %18 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %4, align 8
  %19 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PNFS_BLOCK_INVALID_DATA, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17, %11
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %172

26:                                               ; preds = %17
  %27 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %4, align 8
  %28 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.layout_verification*, %struct.layout_verification** %5, align 8
  %31 = getelementptr inbounds %struct.layout_verification, %struct.layout_verification* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %172

37:                                               ; preds = %26
  %38 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %4, align 8
  %39 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.layout_verification*, %struct.layout_verification** %5, align 8
  %42 = getelementptr inbounds %struct.layout_verification, %struct.layout_verification* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, %40
  store i64 %44, i64* %42, align 8
  store i32 0, i32* %3, align 4
  br label %172

45:                                               ; preds = %2
  %46 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %4, align 8
  %47 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @PNFS_BLOCK_READWRITE_DATA, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %86

51:                                               ; preds = %45
  %52 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %4, align 8
  %53 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.layout_verification*, %struct.layout_verification** %5, align 8
  %56 = getelementptr inbounds %struct.layout_verification, %struct.layout_verification* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %54, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %51
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %172

62:                                               ; preds = %51
  %63 = load %struct.layout_verification*, %struct.layout_verification** %5, align 8
  %64 = getelementptr inbounds %struct.layout_verification, %struct.layout_verification* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.layout_verification*, %struct.layout_verification** %5, align 8
  %67 = getelementptr inbounds %struct.layout_verification, %struct.layout_verification* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp sgt i64 %65, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %62
  %71 = load i32, i32* @EIO, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %172

73:                                               ; preds = %62
  %74 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %4, align 8
  %75 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.layout_verification*, %struct.layout_verification** %5, align 8
  %78 = getelementptr inbounds %struct.layout_verification, %struct.layout_verification* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, %76
  store i64 %80, i64* %78, align 8
  %81 = load %struct.layout_verification*, %struct.layout_verification** %5, align 8
  %82 = getelementptr inbounds %struct.layout_verification, %struct.layout_verification* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.layout_verification*, %struct.layout_verification** %5, align 8
  %85 = getelementptr inbounds %struct.layout_verification, %struct.layout_verification* %84, i32 0, i32 3
  store i64 %83, i64* %85, align 8
  store i32 0, i32* %3, align 4
  br label %172

86:                                               ; preds = %45
  %87 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %4, align 8
  %88 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @PNFS_BLOCK_INVALID_DATA, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %111

92:                                               ; preds = %86
  %93 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %4, align 8
  %94 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.layout_verification*, %struct.layout_verification** %5, align 8
  %97 = getelementptr inbounds %struct.layout_verification, %struct.layout_verification* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %95, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %92
  %101 = load i32, i32* @EIO, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %3, align 4
  br label %172

103:                                              ; preds = %92
  %104 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %4, align 8
  %105 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.layout_verification*, %struct.layout_verification** %5, align 8
  %108 = getelementptr inbounds %struct.layout_verification, %struct.layout_verification* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %109, %106
  store i64 %110, i64* %108, align 8
  store i32 0, i32* %3, align 4
  br label %172

111:                                              ; preds = %86
  %112 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %4, align 8
  %113 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @PNFS_BLOCK_READ_DATA, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %169

117:                                              ; preds = %111
  %118 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %4, align 8
  %119 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.layout_verification*, %struct.layout_verification** %5, align 8
  %122 = getelementptr inbounds %struct.layout_verification, %struct.layout_verification* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp sgt i64 %120, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %117
  %126 = load i32, i32* @EIO, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %3, align 4
  br label %172

128:                                              ; preds = %117
  %129 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %4, align 8
  %130 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.layout_verification*, %struct.layout_verification** %5, align 8
  %133 = getelementptr inbounds %struct.layout_verification, %struct.layout_verification* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = icmp slt i64 %131, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %128
  %137 = load i32, i32* @EIO, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %3, align 4
  br label %172

139:                                              ; preds = %128
  %140 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %4, align 8
  %141 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.layout_verification*, %struct.layout_verification** %5, align 8
  %144 = getelementptr inbounds %struct.layout_verification, %struct.layout_verification* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = icmp slt i64 %142, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %139
  %148 = load i32, i32* @EIO, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %3, align 4
  br label %172

150:                                              ; preds = %139
  %151 = load %struct.layout_verification*, %struct.layout_verification** %5, align 8
  %152 = getelementptr inbounds %struct.layout_verification, %struct.layout_verification* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %4, align 8
  %155 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = add nsw i64 %153, %156
  %158 = load %struct.layout_verification*, %struct.layout_verification** %5, align 8
  %159 = getelementptr inbounds %struct.layout_verification, %struct.layout_verification* %158, i32 0, i32 3
  store i64 %157, i64* %159, align 8
  %160 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %4, align 8
  %161 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.pnfs_block_extent*, %struct.pnfs_block_extent** %4, align 8
  %164 = getelementptr inbounds %struct.pnfs_block_extent, %struct.pnfs_block_extent* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = add nsw i64 %162, %165
  %167 = load %struct.layout_verification*, %struct.layout_verification** %5, align 8
  %168 = getelementptr inbounds %struct.layout_verification, %struct.layout_verification* %167, i32 0, i32 2
  store i64 %166, i64* %168, align 8
  store i32 0, i32* %3, align 4
  br label %172

169:                                              ; preds = %111
  %170 = load i32, i32* @EIO, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %3, align 4
  br label %172

172:                                              ; preds = %169, %150, %147, %136, %125, %103, %100, %73, %70, %59, %37, %34, %23
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
