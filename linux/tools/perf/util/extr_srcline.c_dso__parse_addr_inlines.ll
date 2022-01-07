; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_srcline.c_dso__parse_addr_inlines.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_srcline.c_dso__parse_addr_inlines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inline_node = type { i32 }
%struct.dso = type { i32 }
%struct.symbol = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inline_node* @dso__parse_addr_inlines(%struct.dso* %0, i32 %1, %struct.symbol* %2) #0 {
  %4 = alloca %struct.inline_node*, align 8
  %5 = alloca %struct.dso*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.symbol*, align 8
  %8 = alloca i8*, align 8
  store %struct.dso* %0, %struct.dso** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.symbol* %2, %struct.symbol** %7, align 8
  %9 = load %struct.dso*, %struct.dso** %5, align 8
  %10 = call i8* @dso__name(%struct.dso* %9)
  store i8* %10, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store %struct.inline_node* null, %struct.inline_node** %4, align 8
  br label %20

14:                                               ; preds = %3
  %15 = load i8*, i8** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.dso*, %struct.dso** %5, align 8
  %18 = load %struct.symbol*, %struct.symbol** %7, align 8
  %19 = call %struct.inline_node* @addr2inlines(i8* %15, i32 %16, %struct.dso* %17, %struct.symbol* %18)
  store %struct.inline_node* %19, %struct.inline_node** %4, align 8
  br label %20

20:                                               ; preds = %14, %13
  %21 = load %struct.inline_node*, %struct.inline_node** %4, align 8
  ret %struct.inline_node* %21
}

declare dso_local i8* @dso__name(%struct.dso*) #1

declare dso_local %struct.inline_node* @addr2inlines(i8*, i32, %struct.dso*, %struct.symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
