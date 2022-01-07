; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_sym_update_namespace.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_sym_update_namespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32* }

@.str = private unnamed_addr constant [46 x i8] c"Could not update namespace(%s) for symbol %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @sym_update_namespace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_update_namespace(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.symbol*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call %struct.symbol* @find_symbol(i8* %6)
  store %struct.symbol* %7, %struct.symbol** %5, align 8
  %8 = load %struct.symbol*, %struct.symbol** %5, align 8
  %9 = icmp ne %struct.symbol* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @merror(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %11, i8* %12)
  br label %36

14:                                               ; preds = %2
  %15 = load %struct.symbol*, %struct.symbol** %5, align 8
  %16 = getelementptr inbounds %struct.symbol, %struct.symbol* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @free(i32* %17)
  %19 = load i8*, i8** %4, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %14
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @strdup(i8* %28)
  %30 = call i32* @NOFAIL(i32 %29)
  br label %32

31:                                               ; preds = %21, %14
  br label %32

32:                                               ; preds = %31, %27
  %33 = phi i32* [ %30, %27 ], [ null, %31 ]
  %34 = load %struct.symbol*, %struct.symbol** %5, align 8
  %35 = getelementptr inbounds %struct.symbol, %struct.symbol* %34, i32 0, i32 0
  store i32* %33, i32** %35, align 8
  br label %36

36:                                               ; preds = %32, %10
  ret void
}

declare dso_local %struct.symbol* @find_symbol(i8*) #1

declare dso_local i32 @merror(i8*, i8*, i8*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32* @NOFAIL(i32) #1

declare dso_local i32 @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
