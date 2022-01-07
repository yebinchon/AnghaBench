; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_prints.c_scnprintf_item_head.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_prints.c_scnprintf_item_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.item_head = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@KEY_FORMAT_3_6 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"*3.6* \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"*3.5*\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c", item_len %d, item_location %d, free_space(entry_count) %d\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"[NULL]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.item_head*)* @scnprintf_item_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scnprintf_item_head(i8* %0, i64 %1, %struct.item_head* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.item_head*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.item_head* %2, %struct.item_head** %7, align 8
  %10 = load %struct.item_head*, %struct.item_head** %7, align 8
  %11 = icmp ne %struct.item_head* %10, null
  br i1 %11, label %12, label %68

12:                                               ; preds = %3
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %8, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = getelementptr inbounds i8, i8* %14, i64 %15
  store i8* %16, i8** %9, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = ptrtoint i8* %18 to i64
  %21 = ptrtoint i8* %19 to i64
  %22 = sub i64 %20, %21
  %23 = load %struct.item_head*, %struct.item_head** %7, align 8
  %24 = call i64 @ih_version(%struct.item_head* %23)
  %25 = load i64, i64* @KEY_FORMAT_3_6, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %29 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %17, i64 %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %28)
  %30 = load i8*, i8** %8, align 8
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  store i8* %32, i8** %8, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = ptrtoint i8* %34 to i64
  %37 = ptrtoint i8* %35 to i64
  %38 = sub i64 %36, %37
  %39 = trunc i64 %38 to i32
  %40 = load %struct.item_head*, %struct.item_head** %7, align 8
  %41 = getelementptr inbounds %struct.item_head, %struct.item_head* %40, i32 0, i32 0
  %42 = call i32 @scnprintf_le_key(i8* %33, i32 %39, i32* %41)
  %43 = load i8*, i8** %8, align 8
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  store i8* %45, i8** %8, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = ptrtoint i8* %47 to i64
  %50 = ptrtoint i8* %48 to i64
  %51 = sub i64 %49, %50
  %52 = load %struct.item_head*, %struct.item_head** %7, align 8
  %53 = call i32 @ih_item_len(%struct.item_head* %52)
  %54 = load %struct.item_head*, %struct.item_head** %7, align 8
  %55 = call i32 @ih_location(%struct.item_head* %54)
  %56 = load %struct.item_head*, %struct.item_head** %7, align 8
  %57 = call i32 @ih_free_space(%struct.item_head* %56)
  %58 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %46, i64 %51, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 %53, i32 %55, i32 %57)
  %59 = load i8*, i8** %8, align 8
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  store i8* %61, i8** %8, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = ptrtoint i8* %62 to i64
  %65 = ptrtoint i8* %63 to i64
  %66 = sub i64 %64, %65
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %4, align 4
  br label %72

68:                                               ; preds = %3
  %69 = load i8*, i8** %5, align 8
  %70 = load i64, i64* %6, align 8
  %71 = call i32 (i8*, i64, i8*, ...) @scnprintf(i8* %69, i64 %70, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %68, %12
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @scnprintf(i8*, i64, i8*, ...) #1

declare dso_local i64 @ih_version(%struct.item_head*) #1

declare dso_local i32 @scnprintf_le_key(i8*, i32, i32*) #1

declare dso_local i32 @ih_item_len(%struct.item_head*) #1

declare dso_local i32 @ih_location(%struct.item_head*) #1

declare dso_local i32 @ih_free_space(%struct.item_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
