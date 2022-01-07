; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_generic-chip.c___irq_alloc_domain_generic_chips.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_generic-chip.c___irq_alloc_domain_generic_chips.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.irq_domain_chip_generic*, i32 }
%struct.irq_domain_chip_generic = type { i32, i32, i32, i32, i32, %struct.irq_chip_generic** }
%struct.irq_chip_generic = type { i32, i32*, i32*, %struct.irq_domain* }

@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IRQ_GC_BE_IO = common dso_local global i32 0, align 4
@irq_readl_be = common dso_local global i32 0, align 4
@irq_writel_be = common dso_local global i32 0, align 4
@gc_lock = common dso_local global i32 0, align 4
@gc_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__irq_alloc_domain_generic_chips(%struct.irq_domain* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.irq_domain*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.irq_domain_chip_generic*, align 8
  %19 = alloca %struct.irq_chip_generic*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  store %struct.irq_domain* %0, %struct.irq_domain** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %25 = load %struct.irq_domain*, %struct.irq_domain** %10, align 8
  %26 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %25, i32 0, i32 0
  %27 = load %struct.irq_domain_chip_generic*, %struct.irq_domain_chip_generic** %26, align 8
  %28 = icmp ne %struct.irq_domain_chip_generic* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %8
  %30 = load i32, i32* @EBUSY, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %9, align 4
  br label %145

32:                                               ; preds = %8
  %33 = load %struct.irq_domain*, %struct.irq_domain** %10, align 8
  %34 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @DIV_ROUND_UP(i32 %35, i32 %36)
  store i32 %37, i32* %20, align 4
  %38 = load i32, i32* %20, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %32
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %9, align 4
  br label %145

43:                                               ; preds = %32
  %44 = load i32, i32* %20, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 8
  %47 = add i64 32, %46
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %21, align 4
  %49 = load i32, i32* %20, align 4
  %50 = sext i32 %49 to i64
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 4
  %54 = add i64 32, %53
  %55 = mul i64 %50, %54
  %56 = load i32, i32* %21, align 4
  %57 = sext i32 %56 to i64
  %58 = add i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %21, align 4
  %60 = load i32, i32* %21, align 4
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call %struct.irq_domain_chip_generic* @kzalloc(i32 %60, i32 %61)
  store %struct.irq_domain_chip_generic* %62, %struct.irq_domain_chip_generic** %18, align 8
  %63 = bitcast %struct.irq_domain_chip_generic* %62 to i8*
  store i8* %63, i8** %24, align 8
  %64 = load %struct.irq_domain_chip_generic*, %struct.irq_domain_chip_generic** %18, align 8
  %65 = icmp ne %struct.irq_domain_chip_generic* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %43
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %9, align 4
  br label %145

69:                                               ; preds = %43
  %70 = load i32, i32* %11, align 4
  %71 = load %struct.irq_domain_chip_generic*, %struct.irq_domain_chip_generic** %18, align 8
  %72 = getelementptr inbounds %struct.irq_domain_chip_generic, %struct.irq_domain_chip_generic* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* %20, align 4
  %74 = load %struct.irq_domain_chip_generic*, %struct.irq_domain_chip_generic** %18, align 8
  %75 = getelementptr inbounds %struct.irq_domain_chip_generic, %struct.irq_domain_chip_generic* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* %16, align 4
  %77 = load %struct.irq_domain_chip_generic*, %struct.irq_domain_chip_generic** %18, align 8
  %78 = getelementptr inbounds %struct.irq_domain_chip_generic, %struct.irq_domain_chip_generic* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* %15, align 4
  %80 = load %struct.irq_domain_chip_generic*, %struct.irq_domain_chip_generic** %18, align 8
  %81 = getelementptr inbounds %struct.irq_domain_chip_generic, %struct.irq_domain_chip_generic* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* %17, align 4
  %83 = load %struct.irq_domain_chip_generic*, %struct.irq_domain_chip_generic** %18, align 8
  %84 = getelementptr inbounds %struct.irq_domain_chip_generic, %struct.irq_domain_chip_generic* %83, i32 0, i32 4
  store i32 %82, i32* %84, align 8
  %85 = load %struct.irq_domain_chip_generic*, %struct.irq_domain_chip_generic** %18, align 8
  %86 = load %struct.irq_domain*, %struct.irq_domain** %10, align 8
  %87 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %86, i32 0, i32 0
  store %struct.irq_domain_chip_generic* %85, %struct.irq_domain_chip_generic** %87, align 8
  %88 = load i32, i32* %20, align 4
  %89 = sext i32 %88 to i64
  %90 = mul i64 %89, 8
  %91 = add i64 32, %90
  %92 = load i8*, i8** %24, align 8
  %93 = getelementptr i8, i8* %92, i64 %91
  store i8* %93, i8** %24, align 8
  store i32 0, i32* %22, align 4
  br label %94

94:                                               ; preds = %141, %69
  %95 = load i32, i32* %22, align 4
  %96 = load i32, i32* %20, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %144

98:                                               ; preds = %94
  %99 = load i8*, i8** %24, align 8
  %100 = bitcast i8* %99 to %struct.irq_chip_generic*
  store %struct.irq_chip_generic* %100, %struct.irq_chip_generic** %19, align 8
  %101 = load %struct.irq_domain_chip_generic*, %struct.irq_domain_chip_generic** %18, align 8
  %102 = getelementptr inbounds %struct.irq_domain_chip_generic, %struct.irq_domain_chip_generic* %101, i32 0, i32 5
  %103 = load %struct.irq_chip_generic**, %struct.irq_chip_generic*** %102, align 8
  %104 = load i32, i32* %22, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.irq_chip_generic*, %struct.irq_chip_generic** %103, i64 %105
  store %struct.irq_chip_generic* %100, %struct.irq_chip_generic** %106, align 8
  %107 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %19, align 8
  %108 = load i8*, i8** %13, align 8
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %22, align 4
  %111 = load i32, i32* %11, align 4
  %112 = mul nsw i32 %110, %111
  %113 = load i32, i32* %14, align 4
  %114 = call i32 @irq_init_generic_chip(%struct.irq_chip_generic* %107, i8* %108, i32 %109, i32 %112, i32* null, i32 %113)
  %115 = load %struct.irq_domain*, %struct.irq_domain** %10, align 8
  %116 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %19, align 8
  %117 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %116, i32 0, i32 3
  store %struct.irq_domain* %115, %struct.irq_domain** %117, align 8
  %118 = load i32, i32* %17, align 4
  %119 = load i32, i32* @IRQ_GC_BE_IO, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %98
  %123 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %19, align 8
  %124 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %123, i32 0, i32 2
  store i32* @irq_readl_be, i32** %124, align 8
  %125 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %19, align 8
  %126 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %125, i32 0, i32 1
  store i32* @irq_writel_be, i32** %126, align 8
  br label %127

127:                                              ; preds = %122, %98
  %128 = load i64, i64* %23, align 8
  %129 = call i32 @raw_spin_lock_irqsave(i32* @gc_lock, i64 %128)
  %130 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %19, align 8
  %131 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %130, i32 0, i32 0
  %132 = call i32 @list_add_tail(i32* %131, i32* @gc_list)
  %133 = load i64, i64* %23, align 8
  %134 = call i32 @raw_spin_unlock_irqrestore(i32* @gc_lock, i64 %133)
  %135 = load i32, i32* %12, align 4
  %136 = sext i32 %135 to i64
  %137 = mul i64 %136, 4
  %138 = add i64 32, %137
  %139 = load i8*, i8** %24, align 8
  %140 = getelementptr i8, i8* %139, i64 %138
  store i8* %140, i8** %24, align 8
  br label %141

141:                                              ; preds = %127
  %142 = load i32, i32* %22, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %22, align 4
  br label %94

144:                                              ; preds = %94
  store i32 0, i32* %9, align 4
  br label %145

145:                                              ; preds = %144, %66, %40, %29
  %146 = load i32, i32* %9, align 4
  ret i32 %146
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local %struct.irq_domain_chip_generic* @kzalloc(i32, i32) #1

declare dso_local i32 @irq_init_generic_chip(%struct.irq_chip_generic*, i8*, i32, i32, i32*, i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
