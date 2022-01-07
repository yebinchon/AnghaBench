; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_node.c_tipc_node_fsm_evt.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_node.c_tipc_node_fsm_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_node = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Unknown node fsm state %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Illegal node fsm evt %x in state %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tipc_node*, i32)* @tipc_node_fsm_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tipc_node_fsm_evt(%struct.tipc_node* %0, i32 %1) #0 {
  %3 = alloca %struct.tipc_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tipc_node* %0, %struct.tipc_node** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.tipc_node*, %struct.tipc_node** %3, align 8
  %7 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %76 [
    i32 134, label %10
    i32 128, label %18
    i32 133, label %27
    i32 129, label %34
    i32 135, label %42
    i32 131, label %50
    i32 143, label %57
    i32 140, label %66
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %16 [
    i32 132, label %12
    i32 137, label %13
    i32 130, label %14
    i32 136, label %14
    i32 138, label %15
    i32 139, label %15
    i32 142, label %15
    i32 141, label %15
  ]

12:                                               ; preds = %10
  store i32 129, i32* %5, align 4
  br label %17

13:                                               ; preds = %10
  store i32 135, i32* %5, align 4
  br label %17

14:                                               ; preds = %10, %10
  br label %17

15:                                               ; preds = %10, %10, %10, %10
  br label %16

16:                                               ; preds = %10, %15
  br label %92

17:                                               ; preds = %14, %13, %12
  br label %79

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  switch i32 %19, label %25 [
    i32 130, label %20
    i32 136, label %21
    i32 139, label %22
    i32 142, label %23
    i32 132, label %24
    i32 137, label %24
    i32 138, label %24
    i32 141, label %24
  ]

20:                                               ; preds = %18
  store i32 133, i32* %5, align 4
  br label %26

21:                                               ; preds = %18
  store i32 131, i32* %5, align 4
  br label %26

22:                                               ; preds = %18
  store i32 140, i32* %5, align 4
  br label %26

23:                                               ; preds = %18
  store i32 143, i32* %5, align 4
  br label %26

24:                                               ; preds = %18, %18, %18, %18
  br label %26

25:                                               ; preds = %18
  br label %92

26:                                               ; preds = %24, %23, %22, %21, %20
  br label %79

27:                                               ; preds = %2
  %28 = load i32, i32* %4, align 4
  switch i32 %28, label %32 [
    i32 136, label %29
    i32 132, label %30
    i32 137, label %30
    i32 130, label %30
    i32 138, label %31
    i32 139, label %31
    i32 142, label %31
    i32 141, label %31
  ]

29:                                               ; preds = %27
  store i32 134, i32* %5, align 4
  br label %33

30:                                               ; preds = %27, %27, %27
  br label %33

31:                                               ; preds = %27, %27, %27, %27
  br label %32

32:                                               ; preds = %27, %31
  br label %92

33:                                               ; preds = %30, %29
  br label %79

34:                                               ; preds = %2
  %35 = load i32, i32* %4, align 4
  switch i32 %35, label %40 [
    i32 137, label %36
    i32 130, label %37
    i32 132, label %38
    i32 136, label %38
    i32 138, label %38
    i32 142, label %38
    i32 139, label %39
    i32 141, label %39
  ]

36:                                               ; preds = %34
  store i32 128, i32* %5, align 4
  br label %41

37:                                               ; preds = %34
  store i32 134, i32* %5, align 4
  br label %41

38:                                               ; preds = %34, %34, %34, %34
  br label %41

39:                                               ; preds = %34, %34
  br label %40

40:                                               ; preds = %34, %39
  br label %92

41:                                               ; preds = %38, %37, %36
  br label %79

42:                                               ; preds = %2
  %43 = load i32, i32* %4, align 4
  switch i32 %43, label %48 [
    i32 132, label %44
    i32 136, label %45
    i32 130, label %46
    i32 137, label %46
    i32 138, label %47
    i32 139, label %47
    i32 142, label %47
    i32 141, label %47
  ]

44:                                               ; preds = %42
  store i32 128, i32* %5, align 4
  br label %49

45:                                               ; preds = %42
  store i32 134, i32* %5, align 4
  br label %49

46:                                               ; preds = %42, %42
  br label %49

47:                                               ; preds = %42, %42, %42, %42
  br label %48

48:                                               ; preds = %42, %47
  br label %92

49:                                               ; preds = %46, %45, %44
  br label %79

50:                                               ; preds = %2
  %51 = load i32, i32* %4, align 4
  switch i32 %51, label %55 [
    i32 130, label %52
    i32 132, label %53
    i32 137, label %53
    i32 136, label %53
    i32 138, label %54
    i32 139, label %54
    i32 142, label %54
    i32 141, label %54
  ]

52:                                               ; preds = %50
  store i32 134, i32* %5, align 4
  br label %56

53:                                               ; preds = %50, %50, %50
  br label %56

54:                                               ; preds = %50, %50, %50, %50
  br label %55

55:                                               ; preds = %50, %54
  br label %92

56:                                               ; preds = %53, %52
  br label %79

57:                                               ; preds = %2
  %58 = load i32, i32* %4, align 4
  switch i32 %58, label %64 [
    i32 130, label %59
    i32 136, label %60
    i32 141, label %61
    i32 142, label %62
    i32 132, label %62
    i32 137, label %62
    i32 139, label %63
    i32 138, label %63
  ]

59:                                               ; preds = %57
  store i32 133, i32* %5, align 4
  br label %65

60:                                               ; preds = %57
  store i32 131, i32* %5, align 4
  br label %65

61:                                               ; preds = %57
  store i32 128, i32* %5, align 4
  br label %65

62:                                               ; preds = %57, %57, %57
  br label %65

63:                                               ; preds = %57, %57
  br label %64

64:                                               ; preds = %57, %63
  br label %92

65:                                               ; preds = %62, %61, %60, %59
  br label %79

66:                                               ; preds = %2
  %67 = load i32, i32* %4, align 4
  switch i32 %67, label %74 [
    i32 130, label %68
    i32 136, label %69
    i32 138, label %70
    i32 142, label %71
    i32 139, label %72
    i32 132, label %72
    i32 137, label %72
    i32 141, label %73
  ]

68:                                               ; preds = %66
  store i32 133, i32* %5, align 4
  br label %75

69:                                               ; preds = %66
  store i32 131, i32* %5, align 4
  br label %75

70:                                               ; preds = %66
  store i32 128, i32* %5, align 4
  br label %75

71:                                               ; preds = %66
  store i32 143, i32* %5, align 4
  br label %75

72:                                               ; preds = %66, %66, %66
  br label %75

73:                                               ; preds = %66
  br label %74

74:                                               ; preds = %66, %73
  br label %92

75:                                               ; preds = %72, %71, %70, %69, %68
  br label %79

76:                                               ; preds = %2
  %77 = load i32, i32* %5, align 4
  %78 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %76, %75, %65, %56, %49, %41, %33, %26, %17
  %80 = load %struct.tipc_node*, %struct.tipc_node** %3, align 8
  %81 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.tipc_node*, %struct.tipc_node** %3, align 8
  %84 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @trace_tipc_node_fsm(i32 %82, i32 %85, i32 %86, i32 %87)
  %89 = load i32, i32* %5, align 4
  %90 = load %struct.tipc_node*, %struct.tipc_node** %3, align 8
  %91 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  br label %105

92:                                               ; preds = %74, %64, %55, %48, %40, %32, %25, %16
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* %5, align 4
  %95 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %93, i32 %94)
  %96 = load %struct.tipc_node*, %struct.tipc_node** %3, align 8
  %97 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.tipc_node*, %struct.tipc_node** %3, align 8
  %100 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* %4, align 4
  %104 = call i32 @trace_tipc_node_fsm(i32 %98, i32 %101, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %92, %79
  ret void
}

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i32 @trace_tipc_node_fsm(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
