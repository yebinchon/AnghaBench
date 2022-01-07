; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_extfree_item.c_xfs_efi_copy_format.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_extfree_item.c_xfs_efi_copy_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__*, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@EFSCORRUPTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_efi_copy_format(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %6, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 4
  %22 = add i64 32, %21
  store i64 %22, i64* %8, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = add i64 32, %28
  store i64 %29, i64* %9, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 4
  %36 = add i64 32, %35
  store i64 %36, i64* %10, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %2
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %44 = bitcast %struct.TYPE_10__* %43 to i8*
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %46 = bitcast %struct.TYPE_10__* %45 to i8*
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @memcpy(i8* %44, i8* %46, i64 %47)
  store i32 0, i32* %3, align 4
  br label %190

49:                                               ; preds = %2
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %9, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %117

55:                                               ; preds = %49
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  store %struct.TYPE_10__* %58, %struct.TYPE_10__** %11, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  store i64 0, i64* %7, align 8
  br label %79

79:                                               ; preds = %113, %55
  %80 = load i64, i64* %7, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = icmp slt i64 %80, %84
  br i1 %85, label %86, label %116

86:                                               ; preds = %79
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = load i64, i64* %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = load i64, i64* %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  store i32 %93, i32* %99, align 4
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = load i64, i64* %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = load i64, i64* %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  store i32 %106, i32* %112, align 4
  br label %113

113:                                              ; preds = %86
  %114 = load i64, i64* %7, align 8
  %115 = add nsw i64 %114, 1
  store i64 %115, i64* %7, align 8
  br label %79

116:                                              ; preds = %79
  store i32 0, i32* %3, align 4
  br label %190

117:                                              ; preds = %49
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* %10, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %185

123:                                              ; preds = %117
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %125, align 8
  store %struct.TYPE_10__* %126, %struct.TYPE_10__** %12, align 8
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 4
  store i32 %129, i32* %131, align 8
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 3
  store i32 %134, i32* %136, align 4
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 2
  store i32 %144, i32* %146, align 8
  store i64 0, i64* %7, align 8
  br label %147

147:                                              ; preds = %181, %123
  %148 = load i64, i64* %7, align 8
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = sext i32 %151 to i64
  %153 = icmp slt i64 %148, %152
  br i1 %153, label %154, label %184

154:                                              ; preds = %147
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 1
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %156, align 8
  %158 = load i64, i64* %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %163, align 8
  %165 = load i64, i64* %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 1
  store i32 %161, i32* %167, align 4
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %169, align 8
  %171 = load i64, i64* %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %176, align 8
  %178 = load i64, i64* %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  store i32 %174, i32* %180, align 4
  br label %181

181:                                              ; preds = %154
  %182 = load i64, i64* %7, align 8
  %183 = add nsw i64 %182, 1
  store i64 %183, i64* %7, align 8
  br label %147

184:                                              ; preds = %147
  store i32 0, i32* %3, align 4
  br label %190

185:                                              ; preds = %117
  br label %186

186:                                              ; preds = %185
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* @EFSCORRUPTED, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %3, align 4
  br label %190

190:                                              ; preds = %187, %184, %116, %42
  %191 = load i32, i32* %3, align 4
  ret i32 %191
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
