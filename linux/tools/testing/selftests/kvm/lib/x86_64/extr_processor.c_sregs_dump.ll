; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/x86_64/extr_processor.c_sregs_dump.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/lib/x86_64/extr_processor.c_sregs_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_sregs = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"%*scs:\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%*sds:\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%*ses:\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%*sfs:\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%*sgs:\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%*sss:\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"%*str:\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"%*sldt:\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"%*sgdt:\0A\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"%*sidt:\0A\00", align 1
@.str.11 = private unnamed_addr constant [64 x i8] c"%*scr0: 0x%.16llx cr2: 0x%.16llx cr3: 0x%.16llx cr4: 0x%.16llx\0A\00", align 1
@.str.12 = private unnamed_addr constant [56 x i8] c"%*scr8: 0x%.16llx efer: 0x%.16llx apic_base: 0x%.16llx\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"%*sinterrupt_bitmap:\0A\00", align 1
@KVM_NR_INTERRUPTS = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [12 x i8] c"%*s%.16llx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sregs_dump(i32* %0, %struct.kvm_sregs* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.kvm_sregs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.kvm_sregs* %1, %struct.kvm_sregs** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call i32 (i32*, i8*, i8*, i8*, ...) @fprintf(i32* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %11 = load i32*, i32** %4, align 8
  %12 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %13 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %12, i32 0, i32 17
  %14 = load i8*, i8** %6, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 2
  %16 = call i32 @segment_dump(i32* %11, i32* %13, i8* %15)
  %17 = load i32*, i32** %4, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 (i32*, i8*, i8*, i8*, ...) @fprintf(i32* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %18, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32*, i32** %4, align 8
  %21 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %22 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %21, i32 0, i32 16
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 2
  %25 = call i32 @segment_dump(i32* %20, i32* %22, i8* %24)
  %26 = load i32*, i32** %4, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 (i32*, i8*, i8*, i8*, ...) @fprintf(i32* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %27, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32*, i32** %4, align 8
  %30 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %31 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %30, i32 0, i32 15
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 2
  %34 = call i32 @segment_dump(i32* %29, i32* %31, i8* %33)
  %35 = load i32*, i32** %4, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 (i32*, i8*, i8*, i8*, ...) @fprintf(i32* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %36, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32*, i32** %4, align 8
  %39 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %40 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %39, i32 0, i32 14
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 2
  %43 = call i32 @segment_dump(i32* %38, i32* %40, i8* %42)
  %44 = load i32*, i32** %4, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 (i32*, i8*, i8*, i8*, ...) @fprintf(i32* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %45, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32*, i32** %4, align 8
  %48 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %49 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %48, i32 0, i32 13
  %50 = load i8*, i8** %6, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 2
  %52 = call i32 @segment_dump(i32* %47, i32* %49, i8* %51)
  %53 = load i32*, i32** %4, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 (i32*, i8*, i8*, i8*, ...) @fprintf(i32* %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %54, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32*, i32** %4, align 8
  %57 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %58 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %57, i32 0, i32 12
  %59 = load i8*, i8** %6, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 2
  %61 = call i32 @segment_dump(i32* %56, i32* %58, i8* %60)
  %62 = load i32*, i32** %4, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 (i32*, i8*, i8*, i8*, ...) @fprintf(i32* %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* %63, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32*, i32** %4, align 8
  %66 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %67 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %66, i32 0, i32 11
  %68 = load i8*, i8** %6, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 2
  %70 = call i32 @segment_dump(i32* %65, i32* %67, i8* %69)
  %71 = load i32*, i32** %4, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = call i32 (i32*, i8*, i8*, i8*, ...) @fprintf(i32* %71, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* %72, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i32*, i32** %4, align 8
  %75 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %76 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %75, i32 0, i32 10
  %77 = load i8*, i8** %6, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 2
  %79 = call i32 @segment_dump(i32* %74, i32* %76, i8* %78)
  %80 = load i32*, i32** %4, align 8
  %81 = load i8*, i8** %6, align 8
  %82 = call i32 (i32*, i8*, i8*, i8*, ...) @fprintf(i32* %80, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* %81, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %83 = load i32*, i32** %4, align 8
  %84 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %85 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %84, i32 0, i32 9
  %86 = load i8*, i8** %6, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 2
  %88 = call i32 @dtable_dump(i32* %83, i32* %85, i8* %87)
  %89 = load i32*, i32** %4, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = call i32 (i32*, i8*, i8*, i8*, ...) @fprintf(i32* %89, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* %90, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %92 = load i32*, i32** %4, align 8
  %93 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %94 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %93, i32 0, i32 8
  %95 = load i8*, i8** %6, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 2
  %97 = call i32 @dtable_dump(i32* %92, i32* %94, i8* %96)
  %98 = load i32*, i32** %4, align 8
  %99 = load i8*, i8** %6, align 8
  %100 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %101 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %100, i32 0, i32 7
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %104 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %107 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %110 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = call i32 (i32*, i8*, i8*, i8*, ...) @fprintf(i32* %98, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.11, i64 0, i64 0), i8* %99, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %102, i32 %105, i32 %108, i32 %111)
  %113 = load i32*, i32** %4, align 8
  %114 = load i8*, i8** %6, align 8
  %115 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %116 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %119 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %122 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i32 (i32*, i8*, i8*, i8*, ...) @fprintf(i32* %113, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.12, i64 0, i64 0), i8* %114, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %117, i32 %120, i32 %123)
  %125 = load i32*, i32** %4, align 8
  %126 = load i8*, i8** %6, align 8
  %127 = call i32 (i32*, i8*, i8*, i8*, ...) @fprintf(i32* %125, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i8* %126, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %128

128:                                              ; preds = %146, %3
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* @KVM_NR_INTERRUPTS, align 4
  %131 = add nsw i32 %130, 63
  %132 = sdiv i32 %131, 64
  %133 = icmp ult i32 %129, %132
  br i1 %133, label %134, label %149

134:                                              ; preds = %128
  %135 = load i32*, i32** %4, align 8
  %136 = load i8*, i8** %6, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 2
  %138 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %139 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %7, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = call i32 (i32*, i8*, i8*, i8*, ...) @fprintf(i32* %135, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i8* %137, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %144)
  br label %146

146:                                              ; preds = %134
  %147 = load i32, i32* %7, align 4
  %148 = add i32 %147, 1
  store i32 %148, i32* %7, align 4
  br label %128

149:                                              ; preds = %128
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @segment_dump(i32*, i32*, i8*) #1

declare dso_local i32 @dtable_dump(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
