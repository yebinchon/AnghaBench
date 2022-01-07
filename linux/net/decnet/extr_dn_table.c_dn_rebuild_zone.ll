; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_table.c_dn_rebuild_zone.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_table.c_dn_rebuild_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_zone = type { i32 }
%struct.dn_fib_node = type { %struct.dn_fib_node*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dn_zone*, %struct.dn_fib_node**, i32)* @dn_rebuild_zone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dn_rebuild_zone(%struct.dn_zone* %0, %struct.dn_fib_node** %1, i32 %2) #0 {
  %4 = alloca %struct.dn_zone*, align 8
  %5 = alloca %struct.dn_fib_node**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dn_fib_node*, align 8
  %8 = alloca %struct.dn_fib_node**, align 8
  %9 = alloca %struct.dn_fib_node*, align 8
  %10 = alloca i32, align 4
  store %struct.dn_zone* %0, %struct.dn_zone** %4, align 8
  store %struct.dn_fib_node** %1, %struct.dn_fib_node*** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %64, %3
  %12 = load i32, i32* %10, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %67

15:                                               ; preds = %11
  %16 = load %struct.dn_fib_node**, %struct.dn_fib_node*** %5, align 8
  %17 = load i32, i32* %10, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.dn_fib_node*, %struct.dn_fib_node** %16, i64 %18
  %20 = load %struct.dn_fib_node*, %struct.dn_fib_node** %19, align 8
  store %struct.dn_fib_node* %20, %struct.dn_fib_node** %7, align 8
  br label %21

21:                                               ; preds = %61, %15
  %22 = load %struct.dn_fib_node*, %struct.dn_fib_node** %7, align 8
  %23 = icmp ne %struct.dn_fib_node* %22, null
  br i1 %23, label %24, label %63

24:                                               ; preds = %21
  %25 = load %struct.dn_fib_node*, %struct.dn_fib_node** %7, align 8
  %26 = getelementptr inbounds %struct.dn_fib_node, %struct.dn_fib_node* %25, i32 0, i32 0
  %27 = load %struct.dn_fib_node*, %struct.dn_fib_node** %26, align 8
  store %struct.dn_fib_node* %27, %struct.dn_fib_node** %9, align 8
  %28 = load %struct.dn_fib_node*, %struct.dn_fib_node** %7, align 8
  %29 = getelementptr inbounds %struct.dn_fib_node, %struct.dn_fib_node* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.dn_zone*, %struct.dn_zone** %4, align 8
  %32 = call %struct.dn_fib_node** @dn_chain_p(i32 %30, %struct.dn_zone* %31)
  store %struct.dn_fib_node** %32, %struct.dn_fib_node*** %8, align 8
  br label %33

33:                                               ; preds = %50, %24
  %34 = load %struct.dn_fib_node**, %struct.dn_fib_node*** %8, align 8
  %35 = load %struct.dn_fib_node*, %struct.dn_fib_node** %34, align 8
  %36 = icmp ne %struct.dn_fib_node* %35, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = load %struct.dn_fib_node**, %struct.dn_fib_node*** %8, align 8
  %39 = load %struct.dn_fib_node*, %struct.dn_fib_node** %38, align 8
  %40 = getelementptr inbounds %struct.dn_fib_node, %struct.dn_fib_node* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.dn_fib_node*, %struct.dn_fib_node** %7, align 8
  %43 = getelementptr inbounds %struct.dn_fib_node, %struct.dn_fib_node* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @dn_key_leq(i32 %41, i32 %44)
  %46 = icmp ne i64 %45, 0
  br label %47

47:                                               ; preds = %37, %33
  %48 = phi i1 [ false, %33 ], [ %46, %37 ]
  br i1 %48, label %49, label %54

49:                                               ; preds = %47
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.dn_fib_node**, %struct.dn_fib_node*** %8, align 8
  %52 = load %struct.dn_fib_node*, %struct.dn_fib_node** %51, align 8
  %53 = getelementptr inbounds %struct.dn_fib_node, %struct.dn_fib_node* %52, i32 0, i32 0
  store %struct.dn_fib_node** %53, %struct.dn_fib_node*** %8, align 8
  br label %33

54:                                               ; preds = %47
  %55 = load %struct.dn_fib_node**, %struct.dn_fib_node*** %8, align 8
  %56 = load %struct.dn_fib_node*, %struct.dn_fib_node** %55, align 8
  %57 = load %struct.dn_fib_node*, %struct.dn_fib_node** %7, align 8
  %58 = getelementptr inbounds %struct.dn_fib_node, %struct.dn_fib_node* %57, i32 0, i32 0
  store %struct.dn_fib_node* %56, %struct.dn_fib_node** %58, align 8
  %59 = load %struct.dn_fib_node*, %struct.dn_fib_node** %7, align 8
  %60 = load %struct.dn_fib_node**, %struct.dn_fib_node*** %8, align 8
  store %struct.dn_fib_node* %59, %struct.dn_fib_node** %60, align 8
  br label %61

61:                                               ; preds = %54
  %62 = load %struct.dn_fib_node*, %struct.dn_fib_node** %9, align 8
  store %struct.dn_fib_node* %62, %struct.dn_fib_node** %7, align 8
  br label %21

63:                                               ; preds = %21
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %11

67:                                               ; preds = %11
  ret void
}

declare dso_local %struct.dn_fib_node** @dn_chain_p(i32, %struct.dn_zone*) #1

declare dso_local i64 @dn_key_leq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
