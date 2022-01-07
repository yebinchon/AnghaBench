; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_direct-io.c_dio_send_cur_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_direct-io.c_dio_send_cur_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dio = type { i32 }
%struct.dio_submit = type { i64, i64, i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.buffer_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dio*, %struct.dio_submit*, %struct.buffer_head*)* @dio_send_cur_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dio_send_cur_page(%struct.dio* %0, %struct.dio_submit* %1, %struct.buffer_head* %2) #0 {
  %4 = alloca %struct.dio*, align 8
  %5 = alloca %struct.dio_submit*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.dio* %0, %struct.dio** %4, align 8
  store %struct.dio_submit* %1, %struct.dio_submit** %5, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %11 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %10, i32 0, i32 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %14, label %44

14:                                               ; preds = %3
  %15 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %16 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %8, align 8
  %18 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %19 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %22 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %21, i32 0, i32 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %20, %26
  store i64 %27, i64* %9, align 8
  %28 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %29 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %32 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %14
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %9, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35, %14
  %40 = load %struct.dio*, %struct.dio** %4, align 8
  %41 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %42 = call i32 @dio_bio_submit(%struct.dio* %40, %struct.dio_submit* %41)
  br label %43

43:                                               ; preds = %39, %35
  br label %44

44:                                               ; preds = %43, %3
  %45 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %46 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %45, i32 0, i32 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = icmp eq %struct.TYPE_4__* %47, null
  br i1 %48, label %49, label %61

49:                                               ; preds = %44
  %50 = load %struct.dio*, %struct.dio** %4, align 8
  %51 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %52 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %53 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %56 = call i32 @dio_new_bio(%struct.dio* %50, %struct.dio_submit* %51, i64 %54, %struct.buffer_head* %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  br label %87

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %60, %44
  %62 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %63 = call i32 @dio_bio_add_page(%struct.dio_submit* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %86

65:                                               ; preds = %61
  %66 = load %struct.dio*, %struct.dio** %4, align 8
  %67 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %68 = call i32 @dio_bio_submit(%struct.dio* %66, %struct.dio_submit* %67)
  %69 = load %struct.dio*, %struct.dio** %4, align 8
  %70 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %71 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %72 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %75 = call i32 @dio_new_bio(%struct.dio* %69, %struct.dio_submit* %70, i64 %73, %struct.buffer_head* %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %65
  %79 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %80 = call i32 @dio_bio_add_page(%struct.dio_submit* %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i32
  %84 = call i32 @BUG_ON(i32 %83)
  br label %85

85:                                               ; preds = %78, %65
  br label %86

86:                                               ; preds = %85, %61
  br label %87

87:                                               ; preds = %86, %59
  %88 = load i32, i32* %7, align 4
  ret i32 %88
}

declare dso_local i32 @dio_bio_submit(%struct.dio*, %struct.dio_submit*) #1

declare dso_local i32 @dio_new_bio(%struct.dio*, %struct.dio_submit*, i64, %struct.buffer_head*) #1

declare dso_local i32 @dio_bio_add_page(%struct.dio_submit*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
