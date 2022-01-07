; ModuleID = '/home/carl/AnghaBench/linux/scripts/genksyms/extr_genksyms.c_print_node.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/genksyms/extr_genksyms.c_print_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8 }
%struct.string_list = type { i64, i32 }

@symbol_types = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.string_list*)* @print_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_node(i32* %0, %struct.string_list* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.string_list*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.string_list* %1, %struct.string_list** %4, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @symbol_types, align 8
  %6 = load %struct.string_list*, %struct.string_list** %4, align 8
  %7 = getelementptr inbounds %struct.string_list, %struct.string_list* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @symbol_types, align 8
  %15 = load %struct.string_list*, %struct.string_list** %4, align 8
  %16 = getelementptr inbounds %struct.string_list, %struct.string_list* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i8, i8* %19, align 1
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @putc(i8 signext %20, i32* %21)
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @putc(i8 signext 35, i32* %23)
  br label %25

25:                                               ; preds = %13, %2
  %26 = load %struct.string_list*, %struct.string_list** %4, align 8
  %27 = getelementptr inbounds %struct.string_list, %struct.string_list* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @fputs(i32 %28, i32* %29)
  ret void
}

declare dso_local i32 @putc(i8 signext, i32*) #1

declare dso_local i32 @fputs(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
