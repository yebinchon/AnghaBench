; ModuleID = '/home/carl/AnghaBench/linux/net/packet/extr_af_packet.c_free_pg_vec.c'
source_filename = "/home/carl/AnghaBench/linux/net/packet/extr_af_packet.c_free_pg_vec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pgv = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pgv*, i32, i32)* @free_pg_vec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_pg_vec(%struct.pgv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pgv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pgv* %0, %struct.pgv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %55, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %58

12:                                               ; preds = %8
  %13 = load %struct.pgv*, %struct.pgv** %4, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.pgv, %struct.pgv* %13, i64 %15
  %17 = getelementptr inbounds %struct.pgv, %struct.pgv* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = call i64 @likely(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %54

21:                                               ; preds = %12
  %22 = load %struct.pgv*, %struct.pgv** %4, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.pgv, %struct.pgv* %22, i64 %24
  %26 = getelementptr inbounds %struct.pgv, %struct.pgv* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = call i64 @is_vmalloc_addr(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %21
  %31 = load %struct.pgv*, %struct.pgv** %4, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.pgv, %struct.pgv* %31, i64 %33
  %35 = getelementptr inbounds %struct.pgv, %struct.pgv* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @vfree(i32* %36)
  br label %48

38:                                               ; preds = %21
  %39 = load %struct.pgv*, %struct.pgv** %4, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.pgv, %struct.pgv* %39, i64 %41
  %43 = getelementptr inbounds %struct.pgv, %struct.pgv* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = ptrtoint i32* %44 to i64
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @free_pages(i64 %45, i32 %46)
  br label %48

48:                                               ; preds = %38, %30
  %49 = load %struct.pgv*, %struct.pgv** %4, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.pgv, %struct.pgv* %49, i64 %51
  %53 = getelementptr inbounds %struct.pgv, %struct.pgv* %52, i32 0, i32 0
  store i32* null, i32** %53, align 8
  br label %54

54:                                               ; preds = %48, %12
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %8

58:                                               ; preds = %8
  %59 = load %struct.pgv*, %struct.pgv** %4, align 8
  %60 = call i32 @kfree(%struct.pgv* %59)
  ret void
}

declare dso_local i64 @likely(i32*) #1

declare dso_local i64 @is_vmalloc_addr(i32*) #1

declare dso_local i32 @vfree(i32*) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i32 @kfree(%struct.pgv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
