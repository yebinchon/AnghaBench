; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_btf.c_btf_str.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/bpftool/extr_btf.c_btf_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"(anon)\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"(invalid)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.btf*, i32)* @btf_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @btf_str(%struct.btf* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.btf*, align 8
  %5 = alloca i32, align 4
  store %struct.btf* %0, %struct.btf** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %19

9:                                                ; preds = %2
  %10 = load %struct.btf*, %struct.btf** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @btf__name_by_offset(%struct.btf* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = inttoptr i64 %12 to i8*
  br label %17

16:                                               ; preds = %9
  br label %17

17:                                               ; preds = %16, %14
  %18 = phi i8* [ %15, %14 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %16 ]
  store i8* %18, i8** %3, align 8
  br label %19

19:                                               ; preds = %17, %8
  %20 = load i8*, i8** %3, align 8
  ret i8* %20
}

declare dso_local i64 @btf__name_by_offset(%struct.btf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
