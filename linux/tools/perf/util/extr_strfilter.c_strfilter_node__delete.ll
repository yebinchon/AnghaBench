; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_strfilter.c_strfilter_node__delete.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_strfilter.c_strfilter_node__delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strfilter_node = type { %struct.strfilter_node*, %struct.strfilter_node*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strfilter_node*)* @strfilter_node__delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @strfilter_node__delete(%struct.strfilter_node* %0) #0 {
  %2 = alloca %struct.strfilter_node*, align 8
  store %struct.strfilter_node* %0, %struct.strfilter_node** %2, align 8
  %3 = load %struct.strfilter_node*, %struct.strfilter_node** %2, align 8
  %4 = icmp ne %struct.strfilter_node* %3, null
  br i1 %4, label %5, label %31

5:                                                ; preds = %1
  %6 = load %struct.strfilter_node*, %struct.strfilter_node** %2, align 8
  %7 = getelementptr inbounds %struct.strfilter_node, %struct.strfilter_node* %6, i32 0, i32 2
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %22

10:                                               ; preds = %5
  %11 = load %struct.strfilter_node*, %struct.strfilter_node** %2, align 8
  %12 = getelementptr inbounds %struct.strfilter_node, %struct.strfilter_node* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @is_operator(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %10
  %18 = load %struct.strfilter_node*, %struct.strfilter_node** %2, align 8
  %19 = getelementptr inbounds %struct.strfilter_node, %struct.strfilter_node* %18, i32 0, i32 2
  %20 = bitcast i32** %19 to i8**
  %21 = call i32 @zfree(i8** %20)
  br label %22

22:                                               ; preds = %17, %10, %5
  %23 = load %struct.strfilter_node*, %struct.strfilter_node** %2, align 8
  %24 = getelementptr inbounds %struct.strfilter_node, %struct.strfilter_node* %23, i32 0, i32 1
  %25 = load %struct.strfilter_node*, %struct.strfilter_node** %24, align 8
  call void @strfilter_node__delete(%struct.strfilter_node* %25)
  %26 = load %struct.strfilter_node*, %struct.strfilter_node** %2, align 8
  %27 = getelementptr inbounds %struct.strfilter_node, %struct.strfilter_node* %26, i32 0, i32 0
  %28 = load %struct.strfilter_node*, %struct.strfilter_node** %27, align 8
  call void @strfilter_node__delete(%struct.strfilter_node* %28)
  %29 = load %struct.strfilter_node*, %struct.strfilter_node** %2, align 8
  %30 = call i32 @free(%struct.strfilter_node* %29)
  br label %31

31:                                               ; preds = %22, %1
  ret void
}

declare dso_local i32 @is_operator(i32) #1

declare dso_local i32 @zfree(i8**) #1

declare dso_local i32 @free(%struct.strfilter_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
