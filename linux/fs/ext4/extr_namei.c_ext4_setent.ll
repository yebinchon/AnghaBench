; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_setent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_setent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_renament = type { i32*, %struct.TYPE_7__*, i32, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"get write access\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"call ext4_handle_dirty_metadata\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ext4_renament*, i32, i32)* @ext4_setent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_setent(i32* %0, %struct.ext4_renament* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ext4_renament*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.ext4_renament* %1, %struct.ext4_renament** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.ext4_renament*, %struct.ext4_renament** %7, align 8
  %12 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @BUFFER_TRACE(i32* %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %15 = load i32*, i32** %6, align 8
  %16 = load %struct.ext4_renament*, %struct.ext4_renament** %7, align 8
  %17 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @ext4_journal_get_write_access(i32* %15, i32* %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %5, align 4
  br label %103

24:                                               ; preds = %4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @cpu_to_le32(i32 %25)
  %27 = load %struct.ext4_renament*, %struct.ext4_renament** %7, align 8
  %28 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %27, i32 0, i32 3
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  store i32 %26, i32* %30, align 4
  %31 = load %struct.ext4_renament*, %struct.ext4_renament** %7, align 8
  %32 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %31, i32 0, i32 1
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @ext4_has_feature_filetype(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %24
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.ext4_renament*, %struct.ext4_renament** %7, align 8
  %41 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %40, i32 0, i32 3
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store i32 %39, i32* %43, align 4
  br label %44

44:                                               ; preds = %38, %24
  %45 = load %struct.ext4_renament*, %struct.ext4_renament** %7, align 8
  %46 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %45, i32 0, i32 1
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = call i32 @inode_inc_iversion(%struct.TYPE_7__* %47)
  %49 = load %struct.ext4_renament*, %struct.ext4_renament** %7, align 8
  %50 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %49, i32 0, i32 1
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = call i32 @current_time(%struct.TYPE_7__* %51)
  %53 = load %struct.ext4_renament*, %struct.ext4_renament** %7, align 8
  %54 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %53, i32 0, i32 1
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  store i32 %52, i32* %56, align 4
  %57 = load %struct.ext4_renament*, %struct.ext4_renament** %7, align 8
  %58 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %57, i32 0, i32 1
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 2
  store i32 %52, i32* %60, align 4
  %61 = load i32*, i32** %6, align 8
  %62 = load %struct.ext4_renament*, %struct.ext4_renament** %7, align 8
  %63 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %62, i32 0, i32 1
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = call i32 @ext4_mark_inode_dirty(i32* %61, %struct.TYPE_7__* %64)
  %66 = load %struct.ext4_renament*, %struct.ext4_renament** %7, align 8
  %67 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @BUFFER_TRACE(i32* %68, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %70 = load %struct.ext4_renament*, %struct.ext4_renament** %7, align 8
  %71 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %96, label %74

74:                                               ; preds = %44
  %75 = load i32*, i32** %6, align 8
  %76 = load %struct.ext4_renament*, %struct.ext4_renament** %7, align 8
  %77 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %76, i32 0, i32 1
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = load %struct.ext4_renament*, %struct.ext4_renament** %7, align 8
  %80 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @ext4_handle_dirty_dirblock(i32* %75, %struct.TYPE_7__* %78, i32* %81)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i64 @unlikely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %74
  %87 = load %struct.ext4_renament*, %struct.ext4_renament** %7, align 8
  %88 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %87, i32 0, i32 1
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @ext4_std_error(i32 %91, i32 %92)
  %94 = load i32, i32* %10, align 4
  store i32 %94, i32* %5, align 4
  br label %103

95:                                               ; preds = %74
  br label %96

96:                                               ; preds = %95, %44
  %97 = load %struct.ext4_renament*, %struct.ext4_renament** %7, align 8
  %98 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = call i32 @brelse(i32* %99)
  %101 = load %struct.ext4_renament*, %struct.ext4_renament** %7, align 8
  %102 = getelementptr inbounds %struct.ext4_renament, %struct.ext4_renament* %101, i32 0, i32 0
  store i32* null, i32** %102, align 8
  store i32 0, i32* %5, align 4
  br label %103

103:                                              ; preds = %96, %86, %22
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i32 @BUFFER_TRACE(i32*, i8*) #1

declare dso_local i32 @ext4_journal_get_write_access(i32*, i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i64 @ext4_has_feature_filetype(i32) #1

declare dso_local i32 @inode_inc_iversion(%struct.TYPE_7__*) #1

declare dso_local i32 @current_time(%struct.TYPE_7__*) #1

declare dso_local i32 @ext4_mark_inode_dirty(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @ext4_handle_dirty_dirblock(i32*, %struct.TYPE_7__*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ext4_std_error(i32, i32) #1

declare dso_local i32 @brelse(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
