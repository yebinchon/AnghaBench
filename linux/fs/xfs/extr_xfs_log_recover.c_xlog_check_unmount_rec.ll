; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_log_recover.c_xlog_check_unmount_rec.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_log_recover.c_xlog_check_unmount_rec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlog = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.xlog_rec_header = type { i32, i32, i32, i32 }
%struct.xlog_op_header = type { i32 }

@XLOG_VERSION_2 = common dso_local global i32 0, align 4
@XLOG_HEADER_CYCLE_SIZE = common dso_local global i32 0, align 4
@XLOG_UNMOUNT_TRANS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xlog*, i64*, i64*, %struct.xlog_rec_header*, i64, i8*, i32*)* @xlog_check_unmount_rec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlog_check_unmount_rec(%struct.xlog* %0, i64* %1, i64* %2, %struct.xlog_rec_header* %3, i64 %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.xlog*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.xlog_rec_header*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.xlog_op_header*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.xlog* %0, %struct.xlog** %9, align 8
  store i64* %1, i64** %10, align 8
  store i64* %2, i64** %11, align 8
  store %struct.xlog_rec_header* %3, %struct.xlog_rec_header** %12, align 8
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  %24 = load i32*, i32** %15, align 8
  store i32 0, i32* %24, align 4
  %25 = load %struct.xlog*, %struct.xlog** %9, align 8
  %26 = getelementptr inbounds %struct.xlog, %struct.xlog* %25, i32 0, i32 3
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i64 @xfs_sb_version_haslogv2(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %62

31:                                               ; preds = %7
  %32 = load %struct.xlog_rec_header*, %struct.xlog_rec_header** %12, align 8
  %33 = getelementptr inbounds %struct.xlog_rec_header, %struct.xlog_rec_header* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @be32_to_cpu(i32 %34)
  store i32 %35, i32* %22, align 4
  %36 = load %struct.xlog_rec_header*, %struct.xlog_rec_header** %12, align 8
  %37 = getelementptr inbounds %struct.xlog_rec_header, %struct.xlog_rec_header* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @be32_to_cpu(i32 %38)
  store i32 %39, i32* %23, align 4
  %40 = load i32, i32* %23, align 4
  %41 = load i32, i32* @XLOG_VERSION_2, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %31
  %45 = load i32, i32* %22, align 4
  %46 = load i32, i32* @XLOG_HEADER_CYCLE_SIZE, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %44
  %49 = load i32, i32* %22, align 4
  %50 = load i32, i32* @XLOG_HEADER_CYCLE_SIZE, align 4
  %51 = sdiv i32 %49, %50
  store i32 %51, i32* %19, align 4
  %52 = load i32, i32* %22, align 4
  %53 = load i32, i32* @XLOG_HEADER_CYCLE_SIZE, align 4
  %54 = srem i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load i32, i32* %19, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %19, align 4
  br label %59

59:                                               ; preds = %56, %48
  br label %61

60:                                               ; preds = %44, %31
  store i32 1, i32* %19, align 4
  br label %61

61:                                               ; preds = %60, %59
  br label %63

62:                                               ; preds = %7
  store i32 1, i32* %19, align 4
  br label %63

63:                                               ; preds = %62, %61
  %64 = load %struct.xlog*, %struct.xlog** %9, align 8
  %65 = load i64, i64* %13, align 8
  %66 = load i32, i32* %19, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %65, %67
  %69 = load %struct.xlog_rec_header*, %struct.xlog_rec_header** %12, align 8
  %70 = getelementptr inbounds %struct.xlog_rec_header, %struct.xlog_rec_header* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @be32_to_cpu(i32 %71)
  %73 = call i64 @BTOBB(i32 %72)
  %74 = add nsw i64 %68, %73
  %75 = call i64 @xlog_wrap_logbno(%struct.xlog* %64, i64 %74)
  store i64 %75, i64* %18, align 8
  %76 = load i64*, i64** %10, align 8
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %18, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %129

80:                                               ; preds = %63
  %81 = load %struct.xlog_rec_header*, %struct.xlog_rec_header** %12, align 8
  %82 = getelementptr inbounds %struct.xlog_rec_header, %struct.xlog_rec_header* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @be32_to_cpu(i32 %83)
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %86, label %129

86:                                               ; preds = %80
  %87 = load %struct.xlog*, %struct.xlog** %9, align 8
  %88 = load i64, i64* %13, align 8
  %89 = load i32, i32* %19, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %88, %90
  %92 = call i64 @xlog_wrap_logbno(%struct.xlog* %87, i64 %91)
  store i64 %92, i64* %17, align 8
  %93 = load %struct.xlog*, %struct.xlog** %9, align 8
  %94 = load i64, i64* %17, align 8
  %95 = load i8*, i8** %14, align 8
  %96 = call i32 @xlog_bread(%struct.xlog* %93, i64 %94, i32 1, i8* %95, i8** %21)
  store i32 %96, i32* %20, align 4
  %97 = load i32, i32* %20, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %86
  %100 = load i32, i32* %20, align 4
  store i32 %100, i32* %8, align 4
  br label %130

101:                                              ; preds = %86
  %102 = load i8*, i8** %21, align 8
  %103 = bitcast i8* %102 to %struct.xlog_op_header*
  store %struct.xlog_op_header* %103, %struct.xlog_op_header** %16, align 8
  %104 = load %struct.xlog_op_header*, %struct.xlog_op_header** %16, align 8
  %105 = getelementptr inbounds %struct.xlog_op_header, %struct.xlog_op_header* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @XLOG_UNMOUNT_TRANS, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %128

110:                                              ; preds = %101
  %111 = load %struct.xlog*, %struct.xlog** %9, align 8
  %112 = getelementptr inbounds %struct.xlog, %struct.xlog* %111, i32 0, i32 2
  %113 = load %struct.xlog*, %struct.xlog** %9, align 8
  %114 = getelementptr inbounds %struct.xlog, %struct.xlog* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i64, i64* %18, align 8
  %117 = call i32 @xlog_assign_atomic_lsn(i32* %112, i32 %115, i64 %116)
  %118 = load %struct.xlog*, %struct.xlog** %9, align 8
  %119 = getelementptr inbounds %struct.xlog, %struct.xlog* %118, i32 0, i32 1
  %120 = load %struct.xlog*, %struct.xlog** %9, align 8
  %121 = getelementptr inbounds %struct.xlog, %struct.xlog* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i64, i64* %18, align 8
  %124 = call i32 @xlog_assign_atomic_lsn(i32* %119, i32 %122, i64 %123)
  %125 = load i64, i64* %18, align 8
  %126 = load i64*, i64** %11, align 8
  store i64 %125, i64* %126, align 8
  %127 = load i32*, i32** %15, align 8
  store i32 1, i32* %127, align 4
  br label %128

128:                                              ; preds = %110, %101
  br label %129

129:                                              ; preds = %128, %80, %63
  store i32 0, i32* %8, align 4
  br label %130

130:                                              ; preds = %129, %99
  %131 = load i32, i32* %8, align 4
  ret i32 %131
}

declare dso_local i64 @xfs_sb_version_haslogv2(i32*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @xlog_wrap_logbno(%struct.xlog*, i64) #1

declare dso_local i64 @BTOBB(i32) #1

declare dso_local i32 @xlog_bread(%struct.xlog*, i64, i32, i8*, i8**) #1

declare dso_local i32 @xlog_assign_atomic_lsn(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
