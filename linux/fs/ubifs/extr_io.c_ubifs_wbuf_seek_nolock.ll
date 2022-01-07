; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_io.c_ubifs_wbuf_seek_nolock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_io.c_ubifs_wbuf_seek_nolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_wbuf = type { i32, i64, i32, i32, i32, i32, i32, %struct.ubifs_info* }
%struct.ubifs_info = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"LEB %d:%d, jhead %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_wbuf_seek_nolock(%struct.ubifs_wbuf* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ubifs_wbuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubifs_info*, align 8
  store %struct.ubifs_wbuf* %0, %struct.ubifs_wbuf** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %4, align 8
  %9 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %8, i32 0, i32 7
  %10 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  store %struct.ubifs_info* %10, %struct.ubifs_info** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %4, align 8
  %14 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @dbg_jhead(i32 %15)
  %17 = call i32 @dbg_io(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12, i32 %16)
  %18 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %19 = load i32, i32* %5, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %24 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %22, %25
  br label %27

27:                                               ; preds = %21, %3
  %28 = phi i1 [ false, %3 ], [ %26, %21 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @ubifs_assert(%struct.ubifs_info* %18, i32 %29)
  %31 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %32 = load i32, i32* %6, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %37 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp sle i32 %35, %38
  br label %40

40:                                               ; preds = %34, %27
  %41 = phi i1 [ false, %27 ], [ %39, %34 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @ubifs_assert(%struct.ubifs_info* %31, i32 %42)
  %44 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %47 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = srem i32 %45, %48
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %40
  %52 = load i32, i32* %6, align 4
  %53 = and i32 %52, 7
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  br label %56

56:                                               ; preds = %51, %40
  %57 = phi i1 [ false, %40 ], [ %55, %51 ]
  %58 = zext i1 %57 to i32
  %59 = call i32 @ubifs_assert(%struct.ubifs_info* %44, i32 %58)
  %60 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %4, align 8
  %63 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %61, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @ubifs_assert(%struct.ubifs_info* %60, i32 %66)
  %68 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %69 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %4, align 8
  %70 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i32 @ubifs_assert(%struct.ubifs_info* %68, i32 %73)
  %75 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %4, align 8
  %76 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %75, i32 0, i32 5
  %77 = call i32 @spin_lock(i32* %76)
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %4, align 8
  %80 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %4, align 8
  %83 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  %84 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %85 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %4, align 8
  %88 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = sub nsw i32 %86, %89
  %91 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %92 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %105

95:                                               ; preds = %56
  %96 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %97 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %4, align 8
  %100 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = sub nsw i32 %98, %101
  %103 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %4, align 8
  %104 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 4
  br label %136

105:                                              ; preds = %56
  %106 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %4, align 8
  %107 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %110 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = sub nsw i32 %111, 1
  %113 = and i32 %108, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %129

115:                                              ; preds = %105
  %116 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %4, align 8
  %117 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %120 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @ALIGN(i32 %118, i32 %121)
  %123 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %4, align 8
  %124 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = sub nsw i32 %122, %125
  %127 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %4, align 8
  %128 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %127, i32 0, i32 3
  store i32 %126, i32* %128, align 4
  br label %135

129:                                              ; preds = %105
  %130 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %131 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %4, align 8
  %134 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %133, i32 0, i32 3
  store i32 %132, i32* %134, align 4
  br label %135

135:                                              ; preds = %129, %115
  br label %136

136:                                              ; preds = %135, %95
  %137 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %4, align 8
  %138 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %4, align 8
  %141 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %140, i32 0, i32 4
  store i32 %139, i32* %141, align 8
  %142 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %4, align 8
  %143 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %142, i32 0, i32 1
  store i64 0, i64* %143, align 8
  %144 = load %struct.ubifs_wbuf*, %struct.ubifs_wbuf** %4, align 8
  %145 = getelementptr inbounds %struct.ubifs_wbuf, %struct.ubifs_wbuf* %144, i32 0, i32 5
  %146 = call i32 @spin_unlock(i32* %145)
  ret i32 0
}

declare dso_local i32 @dbg_io(i8*, i32, i32, i32) #1

declare dso_local i32 @dbg_jhead(i32) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
