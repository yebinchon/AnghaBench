; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/subcmd/extr_help.c_is_in_cmdlist.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/subcmd/extr_help.c_is_in_cmdlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdnames = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_in_cmdlist(%struct.cmdnames* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmdnames*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.cmdnames* %0, %struct.cmdnames** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %28, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.cmdnames*, %struct.cmdnames** %4, align 8
  %10 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ult i32 %8, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %7
  %14 = load i8*, i8** %5, align 8
  %15 = load %struct.cmdnames*, %struct.cmdnames** %4, align 8
  %16 = getelementptr inbounds %struct.cmdnames, %struct.cmdnames* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %17, i64 %19
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @strcmp(i8* %14, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %32

27:                                               ; preds = %13
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %6, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %7

31:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %26
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
