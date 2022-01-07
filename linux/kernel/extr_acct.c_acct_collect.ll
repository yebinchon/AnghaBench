; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_acct.c_acct_collect.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_acct.c_acct_collect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__*, i64, i64, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.vm_area_struct* }
%struct.vm_area_struct = type { %struct.vm_area_struct*, i64, i64 }
%struct.TYPE_7__ = type { %struct.pacct_struct }
%struct.pacct_struct = type { i64, i64, i32, i32, i32, i32, i32 }

@current = common dso_local global %struct.TYPE_10__* null, align 8
@PF_FORKNOEXEC = common dso_local global i32 0, align 4
@AFORK = common dso_local global i32 0, align 4
@PF_SUPERPRIV = common dso_local global i32 0, align 4
@ASU = common dso_local global i32 0, align 4
@PF_DUMPCORE = common dso_local global i32 0, align 4
@ACORE = common dso_local global i32 0, align 4
@PF_SIGNALED = common dso_local global i32 0, align 4
@AXSIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acct_collect(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pacct_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.vm_area_struct*, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 5
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  store %struct.pacct_struct* %13, %struct.pacct_struct** %5, align 8
  store i64 0, i64* %8, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %54

16:                                               ; preds = %2
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = icmp ne %struct.TYPE_8__* %19, null
  br i1 %20, label %21, label %54

21:                                               ; preds = %16
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = call i32 @down_read(i32* %25)
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %30, align 8
  store %struct.vm_area_struct* %31, %struct.vm_area_struct** %9, align 8
  br label %32

32:                                               ; preds = %35, %21
  %33 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %34 = icmp ne %struct.vm_area_struct* %33, null
  br i1 %34, label %35, label %48

35:                                               ; preds = %32
  %36 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %37 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %40 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %38, %41
  %43 = load i64, i64* %8, align 8
  %44 = add i64 %43, %42
  store i64 %44, i64* %8, align 8
  %45 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %46 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %45, i32 0, i32 0
  %47 = load %struct.vm_area_struct*, %struct.vm_area_struct** %46, align 8
  store %struct.vm_area_struct* %47, %struct.vm_area_struct** %9, align 8
  br label %32

48:                                               ; preds = %32
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = call i32 @up_read(i32* %52)
  br label %54

54:                                               ; preds = %48, %16, %2
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = call i32 @spin_lock_irq(i32* %58)
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %54
  %63 = load i64, i64* %8, align 8
  %64 = udiv i64 %63, 1024
  %65 = load %struct.pacct_struct*, %struct.pacct_struct** %5, align 8
  %66 = getelementptr inbounds %struct.pacct_struct, %struct.pacct_struct* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  br label %67

67:                                               ; preds = %62, %54
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %69 = call i64 @thread_group_leader(%struct.TYPE_10__* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %88

71:                                               ; preds = %67
  %72 = load i64, i64* %3, align 8
  %73 = load %struct.pacct_struct*, %struct.pacct_struct** %5, align 8
  %74 = getelementptr inbounds %struct.pacct_struct, %struct.pacct_struct* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @PF_FORKNOEXEC, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %71
  %82 = load i32, i32* @AFORK, align 4
  %83 = load %struct.pacct_struct*, %struct.pacct_struct** %5, align 8
  %84 = getelementptr inbounds %struct.pacct_struct, %struct.pacct_struct* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 8
  br label %87

87:                                               ; preds = %81, %71
  br label %88

88:                                               ; preds = %87, %67
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @PF_SUPERPRIV, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %88
  %96 = load i32, i32* @ASU, align 4
  %97 = load %struct.pacct_struct*, %struct.pacct_struct** %5, align 8
  %98 = getelementptr inbounds %struct.pacct_struct, %struct.pacct_struct* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  br label %101

101:                                              ; preds = %95, %88
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @PF_DUMPCORE, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %101
  %109 = load i32, i32* @ACORE, align 4
  %110 = load %struct.pacct_struct*, %struct.pacct_struct** %5, align 8
  %111 = getelementptr inbounds %struct.pacct_struct, %struct.pacct_struct* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 8
  br label %114

114:                                              ; preds = %108, %101
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @PF_SIGNALED, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %114
  %122 = load i32, i32* @AXSIG, align 4
  %123 = load %struct.pacct_struct*, %struct.pacct_struct** %5, align 8
  %124 = getelementptr inbounds %struct.pacct_struct, %struct.pacct_struct* %123, i32 0, i32 6
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 8
  br label %127

127:                                              ; preds = %121, %114
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %129 = call i32 @task_cputime(%struct.TYPE_10__* %128, i64* %6, i64* %7)
  %130 = load i64, i64* %6, align 8
  %131 = load %struct.pacct_struct*, %struct.pacct_struct** %5, align 8
  %132 = getelementptr inbounds %struct.pacct_struct, %struct.pacct_struct* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 4
  %134 = sext i32 %133 to i64
  %135 = add nsw i64 %134, %130
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %132, align 4
  %137 = load i64, i64* %7, align 8
  %138 = load %struct.pacct_struct*, %struct.pacct_struct** %5, align 8
  %139 = getelementptr inbounds %struct.pacct_struct, %struct.pacct_struct* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = sext i32 %140 to i64
  %142 = add nsw i64 %141, %137
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %139, align 8
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.pacct_struct*, %struct.pacct_struct** %5, align 8
  %148 = getelementptr inbounds %struct.pacct_struct, %struct.pacct_struct* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = sext i32 %149 to i64
  %151 = add nsw i64 %150, %146
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %148, align 4
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.pacct_struct*, %struct.pacct_struct** %5, align 8
  %157 = getelementptr inbounds %struct.pacct_struct, %struct.pacct_struct* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = sext i32 %158 to i64
  %160 = add nsw i64 %159, %155
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %157, align 8
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 0
  %166 = call i32 @spin_unlock_irq(i32* %165)
  ret void
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @thread_group_leader(%struct.TYPE_10__*) #1

declare dso_local i32 @task_cputime(%struct.TYPE_10__*, i64*, i64*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
