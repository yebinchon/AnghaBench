; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/extr_checks.c_node_is_compatible.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/extr_checks.c_node_is_compatible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i32 }
%struct.property = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32 }

@.str = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.node*, i8*)* @node_is_compatible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @node_is_compatible(%struct.node* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.node*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.property*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.node* %0, %struct.node** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.node*, %struct.node** %4, align 8
  %10 = call %struct.property* @get_property(%struct.node* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store %struct.property* %10, %struct.property** %6, align 8
  %11 = load %struct.property*, %struct.property** %6, align 8
  %12 = icmp ne %struct.property* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %50

14:                                               ; preds = %2
  %15 = load %struct.property*, %struct.property** %6, align 8
  %16 = getelementptr inbounds %struct.property, %struct.property* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %7, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load %struct.property*, %struct.property** %6, align 8
  %21 = getelementptr inbounds %struct.property, %struct.property* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %19, i64 %24
  store i8* %25, i8** %8, align 8
  br label %26

26:                                               ; preds = %37, %14
  %27 = load i8*, i8** %7, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = icmp ult i8* %27, %28
  br i1 %29, label %30, label %49

30:                                               ; preds = %26
  %31 = load i8*, i8** %7, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = call i64 @streq(i8* %31, i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 1, i32* %3, align 4
  br label %50

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36
  %38 = load i8*, i8** %7, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = ptrtoint i8* %39 to i64
  %42 = ptrtoint i8* %40 to i64
  %43 = sub i64 %41, %42
  %44 = trunc i64 %43 to i32
  %45 = call i64 @strnlen(i8* %38, i32 %44)
  %46 = add nsw i64 %45, 1
  %47 = load i8*, i8** %7, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 %46
  store i8* %48, i8** %7, align 8
  br label %26

49:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %35, %13
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.property* @get_property(%struct.node*, i8*) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i64 @strnlen(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
