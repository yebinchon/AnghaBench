; ModuleID = '/home/carl/AnghaBench/linux/scripts/basic/extr_fixdep.c_define_config.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/basic/extr_fixdep.c_define_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.item = type { i32, i32, %struct.item*, i32 }

@.str = private unnamed_addr constant [14 x i8] c"fixdep:malloc\00", align 1
@hashtab = common dso_local global %struct.item** null, align 8
@HASHSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @define_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @define_config(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.item*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = sext i32 %8 to i64
  %10 = add i64 24, %9
  %11 = trunc i64 %10 to i32
  %12 = call %struct.item* @malloc(i32 %11)
  store %struct.item* %12, %struct.item** %7, align 8
  %13 = load %struct.item*, %struct.item** %7, align 8
  %14 = icmp ne %struct.item* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = call i32 @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 @exit(i32 1) #3
  unreachable

18:                                               ; preds = %3
  %19 = load %struct.item*, %struct.item** %7, align 8
  %20 = getelementptr inbounds %struct.item, %struct.item* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @memcpy(i32 %21, i8* %22, i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.item*, %struct.item** %7, align 8
  %27 = getelementptr inbounds %struct.item, %struct.item* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.item*, %struct.item** %7, align 8
  %30 = getelementptr inbounds %struct.item, %struct.item* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.item**, %struct.item*** @hashtab, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @HASHSZ, align 4
  %34 = urem i32 %32, %33
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.item*, %struct.item** %31, i64 %35
  %37 = load %struct.item*, %struct.item** %36, align 8
  %38 = load %struct.item*, %struct.item** %7, align 8
  %39 = getelementptr inbounds %struct.item, %struct.item* %38, i32 0, i32 2
  store %struct.item* %37, %struct.item** %39, align 8
  %40 = load %struct.item*, %struct.item** %7, align 8
  %41 = load %struct.item**, %struct.item*** @hashtab, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @HASHSZ, align 4
  %44 = urem i32 %42, %43
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.item*, %struct.item** %41, i64 %45
  store %struct.item* %40, %struct.item** %46, align 8
  ret void
}

declare dso_local %struct.item* @malloc(i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
