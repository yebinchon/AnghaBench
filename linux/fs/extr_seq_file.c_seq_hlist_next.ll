; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_seq_file.c_seq_hlist_next.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_seq_file.c_seq_hlist_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlist_node = type { %struct.hlist_node* }
%struct.hlist_head = type { %struct.hlist_node* }

@SEQ_START_TOKEN = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hlist_node* @seq_hlist_next(i8* %0, %struct.hlist_head* %1, i32* %2) #0 {
  %4 = alloca %struct.hlist_node*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hlist_head*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.hlist_node*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.hlist_head* %1, %struct.hlist_head** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.hlist_node*
  store %struct.hlist_node* %10, %struct.hlist_node** %8, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %11, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = load i8*, i8** @SEQ_START_TOKEN, align 8
  %16 = icmp eq i8* %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.hlist_head*, %struct.hlist_head** %6, align 8
  %19 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %18, i32 0, i32 0
  %20 = load %struct.hlist_node*, %struct.hlist_node** %19, align 8
  store %struct.hlist_node* %20, %struct.hlist_node** %4, align 8
  br label %25

21:                                               ; preds = %3
  %22 = load %struct.hlist_node*, %struct.hlist_node** %8, align 8
  %23 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %22, i32 0, i32 0
  %24 = load %struct.hlist_node*, %struct.hlist_node** %23, align 8
  store %struct.hlist_node* %24, %struct.hlist_node** %4, align 8
  br label %25

25:                                               ; preds = %21, %17
  %26 = load %struct.hlist_node*, %struct.hlist_node** %4, align 8
  ret %struct.hlist_node* %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
