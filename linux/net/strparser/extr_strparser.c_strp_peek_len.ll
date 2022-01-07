; ModuleID = '/home/carl/AnghaBench/linux/net/strparser/extr_strparser.c_strp_peek_len.c'
source_filename = "/home/carl/AnghaBench/linux/net/strparser/extr_strparser.c_strp_peek_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strparser = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.socket* }
%struct.socket = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.socket*)* }

@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.strparser*)* @strp_peek_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @strp_peek_len(%struct.strparser* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.strparser*, align 8
  %4 = alloca %struct.socket*, align 8
  store %struct.strparser* %0, %struct.strparser** %3, align 8
  %5 = load %struct.strparser*, %struct.strparser** %3, align 8
  %6 = getelementptr inbounds %struct.strparser, %struct.strparser* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = icmp ne %struct.TYPE_3__* %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = load %struct.strparser*, %struct.strparser** %3, align 8
  %11 = getelementptr inbounds %struct.strparser, %struct.strparser* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.socket*, %struct.socket** %13, align 8
  store %struct.socket* %14, %struct.socket** %4, align 8
  %15 = load %struct.socket*, %struct.socket** %4, align 8
  %16 = getelementptr inbounds %struct.socket, %struct.socket* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32 (%struct.socket*)*, i32 (%struct.socket*)** %18, align 8
  %20 = load %struct.socket*, %struct.socket** %4, align 8
  %21 = call i32 %19(%struct.socket* %20)
  store i32 %21, i32* %2, align 4
  br label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @INT_MAX, align 4
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %22, %9
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
