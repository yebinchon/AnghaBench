; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_type_seq_show.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_btf_type_seq_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf = type { i32 }
%struct.seq_file = type { i32 }
%struct.btf_type = type { i32 }
%struct.TYPE_2__ = type { i32 (%struct.btf*, %struct.btf_type*, i32, i8*, i32, %struct.seq_file*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btf_type_seq_show(%struct.btf* %0, i32 %1, i8* %2, %struct.seq_file* %3) #0 {
  %5 = alloca %struct.btf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.seq_file*, align 8
  %9 = alloca %struct.btf_type*, align 8
  store %struct.btf* %0, %struct.btf** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store %struct.seq_file* %3, %struct.seq_file** %8, align 8
  %10 = load %struct.btf*, %struct.btf** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.btf_type* @btf_type_by_id(%struct.btf* %10, i32 %11)
  store %struct.btf_type* %12, %struct.btf_type** %9, align 8
  %13 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %14 = call %struct.TYPE_2__* @btf_type_ops(%struct.btf_type* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.btf*, %struct.btf_type*, i32, i8*, i32, %struct.seq_file*)*, i32 (%struct.btf*, %struct.btf_type*, i32, i8*, i32, %struct.seq_file*)** %15, align 8
  %17 = load %struct.btf*, %struct.btf** %5, align 8
  %18 = load %struct.btf_type*, %struct.btf_type** %9, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = load %struct.seq_file*, %struct.seq_file** %8, align 8
  %22 = call i32 %16(%struct.btf* %17, %struct.btf_type* %18, i32 %19, i8* %20, i32 0, %struct.seq_file* %21)
  ret void
}

declare dso_local %struct.btf_type* @btf_type_by_id(%struct.btf*, i32) #1

declare dso_local %struct.TYPE_2__* @btf_type_ops(%struct.btf_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
