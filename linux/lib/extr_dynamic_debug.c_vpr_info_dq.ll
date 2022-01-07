; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_dynamic_debug.c_vpr_info_dq.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_dynamic_debug.c_vpr_info_dq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddebug_query = type { i8*, i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [64 x i8] c"%s: func=\22%s\22 file=\22%s\22 module=\22%s\22 format=\22%.*s\22 lineno=%u-%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ddebug_query*, i8*)* @vpr_info_dq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vpr_info_dq(%struct.ddebug_query* %0, i8* %1) #0 {
  %3 = alloca %struct.ddebug_query*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.ddebug_query* %0, %struct.ddebug_query** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.ddebug_query*, %struct.ddebug_query** %3, align 8
  %7 = getelementptr inbounds %struct.ddebug_query, %struct.ddebug_query* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %35

10:                                               ; preds = %2
  %11 = load %struct.ddebug_query*, %struct.ddebug_query** %3, align 8
  %12 = getelementptr inbounds %struct.ddebug_query, %struct.ddebug_query* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @strlen(i8* %13)
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %31, %10
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %15
  %19 = load %struct.ddebug_query*, %struct.ddebug_query** %3, align 8
  %20 = getelementptr inbounds %struct.ddebug_query, %struct.ddebug_query* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %21, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 10
  br label %29

29:                                               ; preds = %18, %15
  %30 = phi i1 [ false, %15 ], [ %28, %18 ]
  br i1 %30, label %31, label %34

31:                                               ; preds = %29
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %5, align 4
  br label %15

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %34, %2
  %36 = load i8*, i8** %4, align 8
  %37 = load %struct.ddebug_query*, %struct.ddebug_query** %3, align 8
  %38 = getelementptr inbounds %struct.ddebug_query, %struct.ddebug_query* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load %struct.ddebug_query*, %struct.ddebug_query** %3, align 8
  %43 = getelementptr inbounds %struct.ddebug_query, %struct.ddebug_query* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  br label %46

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45, %41
  %47 = phi i8* [ %44, %41 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %45 ]
  %48 = load %struct.ddebug_query*, %struct.ddebug_query** %3, align 8
  %49 = getelementptr inbounds %struct.ddebug_query, %struct.ddebug_query* %48, i32 0, i32 2
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load %struct.ddebug_query*, %struct.ddebug_query** %3, align 8
  %54 = getelementptr inbounds %struct.ddebug_query, %struct.ddebug_query* %53, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  br label %57

56:                                               ; preds = %46
  br label %57

57:                                               ; preds = %56, %52
  %58 = phi i8* [ %55, %52 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %56 ]
  %59 = load %struct.ddebug_query*, %struct.ddebug_query** %3, align 8
  %60 = getelementptr inbounds %struct.ddebug_query, %struct.ddebug_query* %59, i32 0, i32 3
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load %struct.ddebug_query*, %struct.ddebug_query** %3, align 8
  %65 = getelementptr inbounds %struct.ddebug_query, %struct.ddebug_query* %64, i32 0, i32 3
  %66 = load i8*, i8** %65, align 8
  br label %68

67:                                               ; preds = %57
  br label %68

68:                                               ; preds = %67, %63
  %69 = phi i8* [ %66, %63 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %67 ]
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.ddebug_query*, %struct.ddebug_query** %3, align 8
  %72 = getelementptr inbounds %struct.ddebug_query, %struct.ddebug_query* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %68
  %76 = load %struct.ddebug_query*, %struct.ddebug_query** %3, align 8
  %77 = getelementptr inbounds %struct.ddebug_query, %struct.ddebug_query* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  br label %80

79:                                               ; preds = %68
  br label %80

80:                                               ; preds = %79, %75
  %81 = phi i8* [ %78, %75 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %79 ]
  %82 = load %struct.ddebug_query*, %struct.ddebug_query** %3, align 8
  %83 = getelementptr inbounds %struct.ddebug_query, %struct.ddebug_query* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ddebug_query*, %struct.ddebug_query** %3, align 8
  %86 = getelementptr inbounds %struct.ddebug_query, %struct.ddebug_query* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @vpr_info(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i8* %36, i8* %47, i8* %58, i8* %69, i32 %70, i8* %81, i32 %84, i32 %87)
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @vpr_info(i8*, i8*, i8*, i8*, i8*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
