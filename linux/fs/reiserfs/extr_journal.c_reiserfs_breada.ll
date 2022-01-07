; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_reiserfs_breada.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_reiserfs_breada.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.block_device = type { i32 }

@BUFNR = common dso_local global i32 0, align 4
@REQ_OP_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buffer_head* (%struct.block_device*, i64, i32, i64)* @reiserfs_breada to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buffer_head* @reiserfs_breada(%struct.block_device* %0, i64 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.block_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %17 = load i32, i32* @BUFNR, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = alloca %struct.buffer_head*, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  %21 = load i32, i32* @BUFNR, align 4
  store i32 %21, i32* %12, align 4
  %22 = load %struct.block_device*, %struct.block_device** %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call %struct.buffer_head* @__getblk(%struct.block_device* %22, i64 %23, i32 %24)
  store %struct.buffer_head* %25, %struct.buffer_head** %13, align 8
  %26 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %27 = call i64 @buffer_uptodate(%struct.buffer_head* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  store %struct.buffer_head* %30, %struct.buffer_head** %5, align 8
  store i32 1, i32* %16, align 4
  br label %104

31:                                               ; preds = %4
  %32 = load i64, i64* %7, align 8
  %33 = load i32, i32* @BUFNR, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = load i64, i64* %9, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %7, align 8
  %41 = sub nsw i64 %39, %40
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %12, align 4
  br label %43

43:                                               ; preds = %38, %31
  %44 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %45 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %20, i64 0
  store %struct.buffer_head* %44, %struct.buffer_head** %45, align 16
  store i32 1, i32* %15, align 4
  store i32 1, i32* %14, align 4
  br label %46

46:                                               ; preds = %71, %43
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %74

50:                                               ; preds = %46
  %51 = load %struct.block_device*, %struct.block_device** %6, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load i32, i32* %14, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %52, %54
  %56 = load i32, i32* %8, align 4
  %57 = call %struct.buffer_head* @__getblk(%struct.block_device* %51, i64 %55, i32 %56)
  store %struct.buffer_head* %57, %struct.buffer_head** %13, align 8
  %58 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %59 = call i64 @buffer_uptodate(%struct.buffer_head* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %50
  %62 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %63 = call i32 @brelse(%struct.buffer_head* %62)
  br label %74

64:                                               ; preds = %50
  %65 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %66 = load i32, i32* %15, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %15, align 4
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %20, i64 %68
  store %struct.buffer_head* %65, %struct.buffer_head** %69, align 8
  br label %70

70:                                               ; preds = %64
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %14, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %14, align 4
  br label %46

74:                                               ; preds = %61, %46
  %75 = load i32, i32* @REQ_OP_READ, align 4
  %76 = load i32, i32* %15, align 4
  %77 = call i32 @ll_rw_block(i32 %75, i32 0, i32 %76, %struct.buffer_head** %20)
  store i32 1, i32* %14, align 4
  br label %78

78:                                               ; preds = %88, %74
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %15, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %78
  %83 = load i32, i32* %14, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %20, i64 %84
  %86 = load %struct.buffer_head*, %struct.buffer_head** %85, align 8
  %87 = call i32 @brelse(%struct.buffer_head* %86)
  br label %88

88:                                               ; preds = %82
  %89 = load i32, i32* %14, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %14, align 4
  br label %78

91:                                               ; preds = %78
  %92 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %20, i64 0
  %93 = load %struct.buffer_head*, %struct.buffer_head** %92, align 16
  store %struct.buffer_head* %93, %struct.buffer_head** %13, align 8
  %94 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %95 = call i32 @wait_on_buffer(%struct.buffer_head* %94)
  %96 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %97 = call i64 @buffer_uptodate(%struct.buffer_head* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %91
  %100 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  store %struct.buffer_head* %100, %struct.buffer_head** %5, align 8
  store i32 1, i32* %16, align 4
  br label %104

101:                                              ; preds = %91
  %102 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %103 = call i32 @brelse(%struct.buffer_head* %102)
  store %struct.buffer_head* null, %struct.buffer_head** %5, align 8
  store i32 1, i32* %16, align 4
  br label %104

104:                                              ; preds = %101, %99, %29
  %105 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %105)
  %106 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  ret %struct.buffer_head* %106
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.buffer_head* @__getblk(%struct.block_device*, i64, i32) #2

declare dso_local i64 @buffer_uptodate(%struct.buffer_head*) #2

declare dso_local i32 @brelse(%struct.buffer_head*) #2

declare dso_local i32 @ll_rw_block(i32, i32, i32, %struct.buffer_head**) #2

declare dso_local i32 @wait_on_buffer(%struct.buffer_head*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
