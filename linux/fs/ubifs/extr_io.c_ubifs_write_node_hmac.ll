; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_io.c_ubifs_write_node_hmac.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_io.c_ubifs_write_node_hmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32, i64, i32, i32, i32 }
%struct.ubifs_ch = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"LEB %d:%d, %s, length %d (aligned %d)\00", align 1
@EROFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_write_node_hmac(%struct.ubifs_info* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubifs_info*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %18 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @ALIGN(i32 %16, i32 %19)
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %12, align 4
  %23 = load i8*, i8** %9, align 8
  %24 = bitcast i8* %23 to %struct.ubifs_ch*
  %25 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dbg_ntype(i32 %26)
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %15, align 4
  %30 = call i32 @dbg_io(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22, i32 %27, i32 %28, i32 %29)
  %31 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %32 = load i32, i32* %11, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %6
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %37 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* %12, align 4
  %42 = icmp sge i32 %41, 0
  br label %43

43:                                               ; preds = %40, %34, %6
  %44 = phi i1 [ false, %34 ], [ false, %6 ], [ %42, %40 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 @ubifs_assert(%struct.ubifs_info* %31, i32 %45)
  %47 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %48 = load i32, i32* %12, align 4
  %49 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %50 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = srem i32 %48, %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %43
  %55 = load i32, i32* %12, align 4
  %56 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %57 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %55, %58
  br label %60

60:                                               ; preds = %54, %43
  %61 = phi i1 [ false, %43 ], [ %59, %54 ]
  %62 = zext i1 %61 to i32
  %63 = call i32 @ubifs_assert(%struct.ubifs_info* %47, i32 %62)
  %64 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %65 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %66 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %60
  %70 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %71 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  br label %75

75:                                               ; preds = %69, %60
  %76 = phi i1 [ false, %60 ], [ %74, %69 ]
  %77 = zext i1 %76 to i32
  %78 = call i32 @ubifs_assert(%struct.ubifs_info* %64, i32 %77)
  %79 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %80 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %81 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = call i32 @ubifs_assert(%struct.ubifs_info* %79, i32 %85)
  %87 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %88 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %75
  %92 = load i32, i32* @EROFS, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %7, align 4
  br label %119

94:                                               ; preds = %75
  %95 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %96 = load i8*, i8** %9, align 8
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %13, align 4
  %99 = call i32 @ubifs_prepare_node_hmac(%struct.ubifs_info* %95, i8* %96, i32 %97, i32 %98, i32 1)
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* %14, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %94
  %103 = load i32, i32* %14, align 4
  store i32 %103, i32* %7, align 4
  br label %119

104:                                              ; preds = %94
  %105 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %106 = load i32, i32* %11, align 4
  %107 = load i8*, i8** %9, align 8
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* %15, align 4
  %110 = call i32 @ubifs_leb_write(%struct.ubifs_info* %105, i32 %106, i8* %107, i32 %108, i32 %109)
  store i32 %110, i32* %14, align 4
  %111 = load i32, i32* %14, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %104
  %114 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %115 = load i8*, i8** %9, align 8
  %116 = call i32 @ubifs_dump_node(%struct.ubifs_info* %114, i8* %115)
  br label %117

117:                                              ; preds = %113, %104
  %118 = load i32, i32* %14, align 4
  store i32 %118, i32* %7, align 4
  br label %119

119:                                              ; preds = %117, %102, %91
  %120 = load i32, i32* %7, align 4
  ret i32 %120
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @dbg_io(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dbg_ntype(i32) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ubifs_prepare_node_hmac(%struct.ubifs_info*, i8*, i32, i32, i32) #1

declare dso_local i32 @ubifs_leb_write(%struct.ubifs_info*, i32, i8*, i32, i32) #1

declare dso_local i32 @ubifs_dump_node(%struct.ubifs_info*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
