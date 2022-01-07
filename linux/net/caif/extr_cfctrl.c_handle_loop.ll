; ModuleID = '/home/carl/AnghaBench/linux/net/caif/extr_cfctrl.c_handle_loop.c'
source_filename = "/home/carl/AnghaBench/linux/net/caif/extr_cfctrl.c_handle_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfctrl = type { i32*, i32 }
%struct.cfpkt = type { i32 }

@handle_loop.last_linkid = internal global i32 0, align 4
@handle_loop.dec = internal global i32 0, align 4
@CFCTRL_SRV_UTIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfctrl*, i32, %struct.cfpkt*)* @handle_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_loop(%struct.cfctrl* %0, i32 %1, %struct.cfpkt* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cfctrl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cfpkt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cfctrl* %0, %struct.cfctrl** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.cfpkt* %2, %struct.cfpkt** %7, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %116 [
    i32 128, label %12
    i32 129, label %101
  ]

12:                                               ; preds = %3
  %13 = load %struct.cfctrl*, %struct.cfctrl** %5, align 8
  %14 = getelementptr inbounds %struct.cfctrl, %struct.cfctrl* %13, i32 0, i32 1
  %15 = call i32 @spin_lock_bh(i32* %14)
  %16 = load i32, i32* @handle_loop.dec, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %39, label %18

18:                                               ; preds = %12
  %19 = load i32, i32* @handle_loop.last_linkid, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %8, align 4
  br label %21

21:                                               ; preds = %35, %18
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 254
  br i1 %23, label %24, label %38

24:                                               ; preds = %21
  %25 = load %struct.cfctrl*, %struct.cfctrl** %5, align 8
  %26 = getelementptr inbounds %struct.cfctrl, %struct.cfctrl* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %24
  br label %63

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %21

38:                                               ; preds = %21
  br label %39

39:                                               ; preds = %38, %12
  store i32 1, i32* @handle_loop.dec, align 4
  %40 = load i32, i32* @handle_loop.last_linkid, align 4
  %41 = sub nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %56, %39
  %43 = load i32, i32* %8, align 4
  %44 = icmp sgt i32 %43, 1
  br i1 %44, label %45, label %59

45:                                               ; preds = %42
  %46 = load %struct.cfctrl*, %struct.cfctrl** %5, align 8
  %47 = getelementptr inbounds %struct.cfctrl, %struct.cfctrl* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %45
  br label %63

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %8, align 4
  br label %42

59:                                               ; preds = %42
  %60 = load %struct.cfctrl*, %struct.cfctrl** %5, align 8
  %61 = getelementptr inbounds %struct.cfctrl, %struct.cfctrl* %60, i32 0, i32 1
  %62 = call i32 @spin_unlock_bh(i32* %61)
  store i32 -1, i32* %4, align 4
  br label %118

63:                                               ; preds = %54, %33
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %64, 10
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 0, i32* @handle_loop.dec, align 4
  br label %67

67:                                               ; preds = %66, %63
  %68 = load %struct.cfctrl*, %struct.cfctrl** %5, align 8
  %69 = getelementptr inbounds %struct.cfctrl, %struct.cfctrl* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %67
  %77 = load %struct.cfctrl*, %struct.cfctrl** %5, align 8
  %78 = getelementptr inbounds %struct.cfctrl, %struct.cfctrl* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  store i32 1, i32* %82, align 4
  br label %83

83:                                               ; preds = %76, %67
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* @handle_loop.last_linkid, align 4
  %85 = load %struct.cfpkt*, %struct.cfpkt** %7, align 8
  %86 = call i32 @cfpkt_add_trail(%struct.cfpkt* %85, i32* %8, i32 1)
  %87 = load %struct.cfctrl*, %struct.cfctrl** %5, align 8
  %88 = getelementptr inbounds %struct.cfctrl, %struct.cfctrl* %87, i32 0, i32 1
  %89 = call i32 @spin_unlock_bh(i32* %88)
  %90 = load %struct.cfpkt*, %struct.cfpkt** %7, align 8
  %91 = call i32 @cfpkt_peek_head(%struct.cfpkt* %90, i32* %9, i32 1)
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @CFCTRL_SRV_UTIL, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %83
  store i32 1, i32* %10, align 4
  %96 = load %struct.cfpkt*, %struct.cfpkt** %7, align 8
  %97 = call i32 @cfpkt_add_trail(%struct.cfpkt* %96, i32* %10, i32 1)
  %98 = load %struct.cfpkt*, %struct.cfpkt** %7, align 8
  %99 = call i32 @cfpkt_add_trail(%struct.cfpkt* %98, i32* %10, i32 1)
  br label %100

100:                                              ; preds = %95, %83
  br label %117

101:                                              ; preds = %3
  %102 = load %struct.cfctrl*, %struct.cfctrl** %5, align 8
  %103 = getelementptr inbounds %struct.cfctrl, %struct.cfctrl* %102, i32 0, i32 1
  %104 = call i32 @spin_lock_bh(i32* %103)
  %105 = load %struct.cfpkt*, %struct.cfpkt** %7, align 8
  %106 = call i32 @cfpkt_peek_head(%struct.cfpkt* %105, i32* %8, i32 1)
  %107 = load %struct.cfctrl*, %struct.cfctrl** %5, align 8
  %108 = getelementptr inbounds %struct.cfctrl, %struct.cfctrl* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  store i32 0, i32* %112, align 4
  %113 = load %struct.cfctrl*, %struct.cfctrl** %5, align 8
  %114 = getelementptr inbounds %struct.cfctrl, %struct.cfctrl* %113, i32 0, i32 1
  %115 = call i32 @spin_unlock_bh(i32* %114)
  br label %117

116:                                              ; preds = %3
  br label %117

117:                                              ; preds = %116, %101, %100
  store i32 0, i32* %4, align 4
  br label %118

118:                                              ; preds = %117, %59
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @cfpkt_add_trail(%struct.cfpkt*, i32*, i32) #1

declare dso_local i32 @cfpkt_peek_head(%struct.cfpkt*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
