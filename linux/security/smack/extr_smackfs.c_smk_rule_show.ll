; ModuleID = '/home/carl/AnghaBench/linux/security/smack/extr_smackfs.c_smk_rule_show.c'
source_filename = "/home/carl/AnghaBench/linux/security/smack/extr_smackfs.c_smk_rule_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.smack_rule = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@MAY_READ = common dso_local global i32 0, align 4
@MAY_WRITE = common dso_local global i32 0, align 4
@MAY_EXEC = common dso_local global i32 0, align 4
@MAY_APPEND = common dso_local global i32 0, align 4
@MAY_TRANSMUTE = common dso_local global i32 0, align 4
@MAY_LOCK = common dso_local global i32 0, align 4
@MAY_BRINGUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.smack_rule*, i32)* @smk_rule_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smk_rule_show(%struct.seq_file* %0, %struct.smack_rule* %1, i32 %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.smack_rule*, align 8
  %6 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store %struct.smack_rule* %1, %struct.smack_rule** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.smack_rule*, %struct.smack_rule** %5, align 8
  %8 = getelementptr inbounds %struct.smack_rule, %struct.smack_rule* %7, i32 0, i32 2
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @strlen(i32 %11)
  %13 = load i32, i32* %6, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %24, label %15

15:                                               ; preds = %3
  %16 = load %struct.smack_rule*, %struct.smack_rule** %5, align 8
  %17 = getelementptr inbounds %struct.smack_rule, %struct.smack_rule* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @strlen(i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %15, %3
  br label %118

25:                                               ; preds = %15
  %26 = load %struct.smack_rule*, %struct.smack_rule** %5, align 8
  %27 = getelementptr inbounds %struct.smack_rule, %struct.smack_rule* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %118

31:                                               ; preds = %25
  %32 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %33 = load %struct.smack_rule*, %struct.smack_rule** %5, align 8
  %34 = getelementptr inbounds %struct.smack_rule, %struct.smack_rule* %33, i32 0, i32 2
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.smack_rule*, %struct.smack_rule** %5, align 8
  %39 = getelementptr inbounds %struct.smack_rule, %struct.smack_rule* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @seq_printf(%struct.seq_file* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %42)
  %44 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %45 = call i32 @seq_putc(%struct.seq_file* %44, i8 signext 32)
  %46 = load %struct.smack_rule*, %struct.smack_rule** %5, align 8
  %47 = getelementptr inbounds %struct.smack_rule, %struct.smack_rule* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @MAY_READ, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %31
  %53 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %54 = call i32 @seq_putc(%struct.seq_file* %53, i8 signext 114)
  br label %55

55:                                               ; preds = %52, %31
  %56 = load %struct.smack_rule*, %struct.smack_rule** %5, align 8
  %57 = getelementptr inbounds %struct.smack_rule, %struct.smack_rule* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @MAY_WRITE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %64 = call i32 @seq_putc(%struct.seq_file* %63, i8 signext 119)
  br label %65

65:                                               ; preds = %62, %55
  %66 = load %struct.smack_rule*, %struct.smack_rule** %5, align 8
  %67 = getelementptr inbounds %struct.smack_rule, %struct.smack_rule* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @MAY_EXEC, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %74 = call i32 @seq_putc(%struct.seq_file* %73, i8 signext 120)
  br label %75

75:                                               ; preds = %72, %65
  %76 = load %struct.smack_rule*, %struct.smack_rule** %5, align 8
  %77 = getelementptr inbounds %struct.smack_rule, %struct.smack_rule* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @MAY_APPEND, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %75
  %83 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %84 = call i32 @seq_putc(%struct.seq_file* %83, i8 signext 97)
  br label %85

85:                                               ; preds = %82, %75
  %86 = load %struct.smack_rule*, %struct.smack_rule** %5, align 8
  %87 = getelementptr inbounds %struct.smack_rule, %struct.smack_rule* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @MAY_TRANSMUTE, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %94 = call i32 @seq_putc(%struct.seq_file* %93, i8 signext 116)
  br label %95

95:                                               ; preds = %92, %85
  %96 = load %struct.smack_rule*, %struct.smack_rule** %5, align 8
  %97 = getelementptr inbounds %struct.smack_rule, %struct.smack_rule* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @MAY_LOCK, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %95
  %103 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %104 = call i32 @seq_putc(%struct.seq_file* %103, i8 signext 108)
  br label %105

105:                                              ; preds = %102, %95
  %106 = load %struct.smack_rule*, %struct.smack_rule** %5, align 8
  %107 = getelementptr inbounds %struct.smack_rule, %struct.smack_rule* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @MAY_BRINGUP, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %105
  %113 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %114 = call i32 @seq_putc(%struct.seq_file* %113, i8 signext 98)
  br label %115

115:                                              ; preds = %112, %105
  %116 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %117 = call i32 @seq_putc(%struct.seq_file* %116, i8 signext 10)
  br label %118

118:                                              ; preds = %115, %30, %24
  ret void
}

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
