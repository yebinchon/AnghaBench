; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_file2alias.c_do_vio_entry.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_file2alias.c_do_vio_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vio_device_id = common dso_local global i32 0, align 4
@type = common dso_local global i8** null, align 8
@compat = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [11 x i8] c"vio:T%sS%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @do_vio_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_vio_entry(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i32, i32* @vio_device_id, align 4
  %10 = load i8**, i8*** @type, align 8
  %11 = call i32 @DEF_FIELD_ADDR(i8* %8, i32 %9, i8** %10)
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* @vio_device_id, align 4
  %14 = load i8**, i8*** @compat, align 8
  %15 = call i32 @DEF_FIELD_ADDR(i8* %12, i32 %13, i8** %14)
  %16 = load i8*, i8** %6, align 8
  %17 = load i8**, i8*** @type, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i8**, i8*** @type, align 8
  %25 = load i8*, i8** %24, align 8
  br label %27

26:                                               ; preds = %3
  br label %27

27:                                               ; preds = %26, %23
  %28 = phi i8* [ %25, %23 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %26 ]
  %29 = load i8**, i8*** @compat, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i8**, i8*** @compat, align 8
  %37 = load i8*, i8** %36, align 8
  br label %39

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %38, %35
  %40 = phi i8* [ %37, %35 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %38 ]
  %41 = call i32 @sprintf(i8* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %28, i8* %40)
  %42 = load i8*, i8** %6, align 8
  store i8* %42, i8** %7, align 8
  br label %43

43:                                               ; preds = %61, %39
  %44 = load i8*, i8** %7, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load i8*, i8** %7, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 0
  br label %51

51:                                               ; preds = %46, %43
  %52 = phi i1 [ false, %43 ], [ %50, %46 ]
  br i1 %52, label %53, label %64

53:                                               ; preds = %51
  %54 = load i8*, i8** %7, align 8
  %55 = load i8, i8* %54, align 1
  %56 = call i64 @isspace(i8 signext %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i8*, i8** %7, align 8
  store i8 95, i8* %59, align 1
  br label %60

60:                                               ; preds = %58, %53
  br label %61

61:                                               ; preds = %60
  %62 = load i8*, i8** %7, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %7, align 8
  br label %43

64:                                               ; preds = %51
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 @add_wildcard(i8* %65)
  ret i32 1
}

declare dso_local i32 @DEF_FIELD_ADDR(i8*, i32, i8**) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @add_wildcard(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
