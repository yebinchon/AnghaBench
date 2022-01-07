; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mempool.c_mempool_resize.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mempool.c_mempool_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i8**, i32, i32, i32 (i8*, i32)*, i8* (i32, i32)* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mempool_resize(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp sle i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = call i32 (...) @might_sleep()
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 3
  %16 = load i64, i64* %8, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sle i32 %18, %21
  br i1 %22, label %23, label %53

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %30, %23
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %49

30:                                               ; preds = %24
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = call i8* @remove_element(%struct.TYPE_5__* %31)
  store i8* %32, i8** %6, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 3
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 5
  %39 = load i32 (i8*, i32)*, i32 (i8*, i32)** %38, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = call i32 %39(i8* %40, i32 %43)
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 3
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @spin_lock_irqsave(i32* %46, i64 %47)
  br label %24

49:                                               ; preds = %24
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  br label %163

53:                                               ; preds = %2
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 3
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call i8** @kmalloc_array(i32 %58, i32 8, i32 %59)
  store i8** %60, i8*** %7, align 8
  %61 = load i8**, i8*** %7, align 8
  %62 = icmp ne i8** %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %53
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %169

66:                                               ; preds = %53
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 3
  %69 = load i64, i64* %8, align 8
  %70 = call i32 @spin_lock_irqsave(i32* %68, i64 %69)
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp sle i32 %71, %74
  %76 = zext i1 %75 to i32
  %77 = call i64 @unlikely(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %66
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 3
  %82 = load i64, i64* %8, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32* %81, i64 %82)
  %84 = load i8**, i8*** %7, align 8
  %85 = call i32 @kfree(i8** %84)
  br label %168

86:                                               ; preds = %66
  %87 = load i8**, i8*** %7, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 2
  %90 = load i8**, i8*** %89, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = mul i64 %94, 8
  %96 = trunc i64 %95 to i32
  %97 = call i32 @memcpy(i8** %87, i8** %90, i32 %96)
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 2
  %100 = load i8**, i8*** %99, align 8
  %101 = call i32 @kfree(i8** %100)
  %102 = load i8**, i8*** %7, align 8
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 2
  store i8** %102, i8*** %104, align 8
  %105 = load i32, i32* %5, align 4
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  br label %108

108:                                              ; preds = %161, %86
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp slt i32 %111, %114
  br i1 %115, label %116, label %162

116:                                              ; preds = %108
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 3
  %119 = load i64, i64* %8, align 8
  %120 = call i32 @spin_unlock_irqrestore(i32* %118, i64 %119)
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 6
  %123 = load i8* (i32, i32)*, i8* (i32, i32)** %122, align 8
  %124 = load i32, i32* @GFP_KERNEL, align 4
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = call i8* %123(i32 %124, i32 %127)
  store i8* %128, i8** %6, align 8
  %129 = load i8*, i8** %6, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %132, label %131

131:                                              ; preds = %116
  br label %168

132:                                              ; preds = %116
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 3
  %135 = load i64, i64* %8, align 8
  %136 = call i32 @spin_lock_irqsave(i32* %134, i64 %135)
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp slt i32 %139, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %132
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %146 = load i8*, i8** %6, align 8
  %147 = call i32 @add_element(%struct.TYPE_5__* %145, i8* %146)
  br label %161

148:                                              ; preds = %132
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 3
  %151 = load i64, i64* %8, align 8
  %152 = call i32 @spin_unlock_irqrestore(i32* %150, i64 %151)
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 5
  %155 = load i32 (i8*, i32)*, i32 (i8*, i32)** %154, align 8
  %156 = load i8*, i8** %6, align 8
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 4
  %160 = call i32 %155(i8* %156, i32 %159)
  br label %168

161:                                              ; preds = %144
  br label %108

162:                                              ; preds = %108
  br label %163

163:                                              ; preds = %162, %49
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 3
  %166 = load i64, i64* %8, align 8
  %167 = call i32 @spin_unlock_irqrestore(i32* %165, i64 %166)
  br label %168

168:                                              ; preds = %163, %148, %131, %79
  store i32 0, i32* %3, align 4
  br label %169

169:                                              ; preds = %168, %63
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i8* @remove_element(%struct.TYPE_5__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i8** @kmalloc_array(i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kfree(i8**) #1

declare dso_local i32 @memcpy(i8**, i8**, i32) #1

declare dso_local i32 @add_element(%struct.TYPE_5__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
