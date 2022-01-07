; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_distributed-arp-table.c_batadv_is_orig_node_eligible.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_distributed-arp-table.c_batadv_is_orig_node_eligible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_dat_candidate = type { %struct.batadv_orig_node* }
%struct.batadv_orig_node = type { i32, i32 }

@BATADV_ORIG_CAPA_HAS_DAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.batadv_dat_candidate*, i32, i64, i64, i64, %struct.batadv_orig_node*, %struct.batadv_orig_node*)* @batadv_is_orig_node_eligible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_is_orig_node_eligible(%struct.batadv_dat_candidate* %0, i32 %1, i64 %2, i64 %3, i64 %4, %struct.batadv_orig_node* %5, %struct.batadv_orig_node* %6) #0 {
  %8 = alloca %struct.batadv_dat_candidate*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.batadv_orig_node*, align 8
  %14 = alloca %struct.batadv_orig_node*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.batadv_dat_candidate* %0, %struct.batadv_dat_candidate** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.batadv_orig_node* %5, %struct.batadv_orig_node** %13, align 8
  store %struct.batadv_orig_node* %6, %struct.batadv_orig_node** %14, align 8
  store i32 0, i32* %15, align 4
  %17 = load i32, i32* @BATADV_ORIG_CAPA_HAS_DAT, align 4
  %18 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %13, align 8
  %19 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %18, i32 0, i32 1
  %20 = call i32 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %7
  br label %75

23:                                               ; preds = %7
  store i32 0, i32* %16, align 4
  br label %24

24:                                               ; preds = %39, %23
  %25 = load i32, i32* %16, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = load %struct.batadv_dat_candidate*, %struct.batadv_dat_candidate** %8, align 8
  %30 = load i32, i32* %16, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.batadv_dat_candidate, %struct.batadv_dat_candidate* %29, i64 %31
  %33 = getelementptr inbounds %struct.batadv_dat_candidate, %struct.batadv_dat_candidate* %32, i32 0, i32 0
  %34 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %33, align 8
  %35 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %13, align 8
  %36 = icmp eq %struct.batadv_orig_node* %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %42

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %16, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %16, align 4
  br label %24

42:                                               ; preds = %37, %24
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %75

47:                                               ; preds = %42
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* %12, align 8
  %50 = icmp sgt i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %75

52:                                               ; preds = %47
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %11, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %75

57:                                               ; preds = %52
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* %11, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %74

61:                                               ; preds = %57
  %62 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %14, align 8
  %63 = icmp ne %struct.batadv_orig_node* %62, null
  br i1 %63, label %64, label %74

64:                                               ; preds = %61
  %65 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %13, align 8
  %66 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %14, align 8
  %69 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @batadv_compare_eth(i32 %67, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  br label %75

74:                                               ; preds = %64, %61, %57
  store i32 1, i32* %15, align 4
  br label %75

75:                                               ; preds = %74, %73, %56, %51, %46, %22
  %76 = load i32, i32* %15, align 4
  ret i32 %76
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @batadv_compare_eth(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
