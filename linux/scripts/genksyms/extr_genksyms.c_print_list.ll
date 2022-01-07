; ModuleID = '/home/carl/AnghaBench/linux/scripts/genksyms/extr_genksyms.c_print_list.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/genksyms/extr_genksyms.c_print_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { %struct.string_list* }

@.str = private unnamed_addr constant [6 x i8] c"(nil)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.string_list*)* @print_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_list(i32* %0, %struct.string_list* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.string_list*, align 8
  %5 = alloca %struct.string_list**, align 8
  %6 = alloca %struct.string_list**, align 8
  %7 = alloca %struct.string_list*, align 8
  %8 = alloca %struct.string_list**, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.string_list* %1, %struct.string_list** %4, align 8
  store i32 1, i32* %9, align 4
  %10 = load %struct.string_list*, %struct.string_list** %4, align 8
  %11 = icmp eq %struct.string_list* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %13)
  br label %63

15:                                               ; preds = %2
  %16 = load %struct.string_list*, %struct.string_list** %4, align 8
  store %struct.string_list* %16, %struct.string_list** %7, align 8
  br label %17

17:                                               ; preds = %22, %15
  %18 = load %struct.string_list*, %struct.string_list** %7, align 8
  %19 = getelementptr inbounds %struct.string_list, %struct.string_list* %18, i32 0, i32 0
  %20 = load %struct.string_list*, %struct.string_list** %19, align 8
  store %struct.string_list* %20, %struct.string_list** %7, align 8
  %21 = icmp ne %struct.string_list* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* %9, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %9, align 4
  br label %17

25:                                               ; preds = %17
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 8
  %29 = trunc i64 %28 to i32
  %30 = call %struct.string_list** @alloca(i32 %29)
  store %struct.string_list** %30, %struct.string_list*** %6, align 8
  %31 = load %struct.string_list**, %struct.string_list*** %6, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.string_list*, %struct.string_list** %31, i64 %33
  store %struct.string_list** %34, %struct.string_list*** %5, align 8
  %35 = load %struct.string_list**, %struct.string_list*** %5, align 8
  %36 = getelementptr inbounds %struct.string_list*, %struct.string_list** %35, i64 -1
  store %struct.string_list** %36, %struct.string_list*** %8, align 8
  %37 = load %struct.string_list*, %struct.string_list** %4, align 8
  %38 = load %struct.string_list**, %struct.string_list*** %8, align 8
  %39 = getelementptr inbounds %struct.string_list*, %struct.string_list** %38, i32 -1
  store %struct.string_list** %39, %struct.string_list*** %8, align 8
  store %struct.string_list* %37, %struct.string_list** %38, align 8
  br label %40

40:                                               ; preds = %45, %25
  %41 = load %struct.string_list*, %struct.string_list** %4, align 8
  %42 = getelementptr inbounds %struct.string_list, %struct.string_list* %41, i32 0, i32 0
  %43 = load %struct.string_list*, %struct.string_list** %42, align 8
  store %struct.string_list* %43, %struct.string_list** %4, align 8
  %44 = icmp ne %struct.string_list* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load %struct.string_list*, %struct.string_list** %4, align 8
  %47 = load %struct.string_list**, %struct.string_list*** %8, align 8
  %48 = getelementptr inbounds %struct.string_list*, %struct.string_list** %47, i32 -1
  store %struct.string_list** %48, %struct.string_list*** %8, align 8
  store %struct.string_list* %46, %struct.string_list** %47, align 8
  br label %40

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %54, %49
  %51 = load %struct.string_list**, %struct.string_list*** %6, align 8
  %52 = load %struct.string_list**, %struct.string_list*** %5, align 8
  %53 = icmp ne %struct.string_list** %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  %55 = load i32*, i32** %3, align 8
  %56 = load %struct.string_list**, %struct.string_list*** %6, align 8
  %57 = getelementptr inbounds %struct.string_list*, %struct.string_list** %56, i32 1
  store %struct.string_list** %57, %struct.string_list*** %6, align 8
  %58 = load %struct.string_list*, %struct.string_list** %56, align 8
  %59 = ptrtoint %struct.string_list* %58 to i32
  %60 = call i32 @print_node(i32* %55, i32 %59)
  %61 = load i32*, i32** %3, align 8
  %62 = call i32 @putc(i8 signext 32, i32* %61)
  br label %50

63:                                               ; preds = %12, %50
  ret void
}

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local %struct.string_list** @alloca(i32) #1

declare dso_local i32 @print_node(i32*, i32) #1

declare dso_local i32 @putc(i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
