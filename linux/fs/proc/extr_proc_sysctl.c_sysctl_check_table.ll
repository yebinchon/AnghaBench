; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c_sysctl_check_table.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c_sysctl_check_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_table = type { i64, i32, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [11 x i8] c"Not a file\00", align 1
@proc_dostring = common dso_local global i64 0, align 8
@proc_dointvec = common dso_local global i64 0, align 8
@proc_douintvec = common dso_local global i64 0, align 8
@proc_douintvec_minmax = common dso_local global i64 0, align 8
@proc_dointvec_minmax = common dso_local global i64 0, align 8
@proc_dointvec_jiffies = common dso_local global i64 0, align 8
@proc_dointvec_userhz_jiffies = common dso_local global i64 0, align 8
@proc_dointvec_ms_jiffies = common dso_local global i64 0, align 8
@proc_doulongvec_minmax = common dso_local global i64 0, align 8
@proc_doulongvec_ms_jiffies_minmax = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"No data\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"No maxlen\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"No proc_handler\00", align 1
@S_IRUGO = common dso_local global i32 0, align 4
@S_IWUGO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"bogus .mode 0%o\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.ctl_table*)* @sysctl_check_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysctl_check_table(i8* %0, %struct.ctl_table* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ctl_table*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.ctl_table* %1, %struct.ctl_table** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %144, %2
  %7 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %8 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %7, i32 0, i32 5
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %147

11:                                               ; preds = %6
  %12 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %13 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load i8*, i8** %3, align 8
  %18 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %19 = call i32 (i8*, %struct.ctl_table*, i8*, ...) @sysctl_err(i8* %17, %struct.ctl_table* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %16, %11
  %23 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %24 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @proc_dostring, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %82, label %28

28:                                               ; preds = %22
  %29 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %30 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @proc_dointvec, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %82, label %34

34:                                               ; preds = %28
  %35 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %36 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @proc_douintvec, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %82, label %40

40:                                               ; preds = %34
  %41 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %42 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @proc_douintvec_minmax, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %82, label %46

46:                                               ; preds = %40
  %47 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %48 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @proc_dointvec_minmax, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %82, label %52

52:                                               ; preds = %46
  %53 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %54 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @proc_dointvec_jiffies, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %82, label %58

58:                                               ; preds = %52
  %59 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %60 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @proc_dointvec_userhz_jiffies, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %82, label %64

64:                                               ; preds = %58
  %65 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %66 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @proc_dointvec_ms_jiffies, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %82, label %70

70:                                               ; preds = %64
  %71 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %72 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @proc_doulongvec_minmax, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %82, label %76

76:                                               ; preds = %70
  %77 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %78 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @proc_doulongvec_ms_jiffies_minmax, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %111

82:                                               ; preds = %76, %70, %64, %58, %52, %46, %40, %34, %28, %22
  %83 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %84 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %82
  %88 = load i8*, i8** %3, align 8
  %89 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %90 = call i32 (i8*, %struct.ctl_table*, i8*, ...) @sysctl_err(i8* %88, %struct.ctl_table* %89, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %91 = load i32, i32* %5, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %87, %82
  %94 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %95 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %93
  %99 = load i8*, i8** %3, align 8
  %100 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %101 = call i32 (i8*, %struct.ctl_table*, i8*, ...) @sysctl_err(i8* %99, %struct.ctl_table* %100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %102 = load i32, i32* %5, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %5, align 4
  br label %110

104:                                              ; preds = %93
  %105 = load i8*, i8** %3, align 8
  %106 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %107 = call i32 @sysctl_check_table_array(i8* %105, %struct.ctl_table* %106)
  %108 = load i32, i32* %5, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %104, %98
  br label %111

111:                                              ; preds = %110, %76
  %112 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %113 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %122, label %116

116:                                              ; preds = %111
  %117 = load i8*, i8** %3, align 8
  %118 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %119 = call i32 (i8*, %struct.ctl_table*, i8*, ...) @sysctl_err(i8* %117, %struct.ctl_table* %118, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %120 = load i32, i32* %5, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %5, align 4
  br label %122

122:                                              ; preds = %116, %111
  %123 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %124 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @S_IRUGO, align 4
  %127 = load i32, i32* @S_IWUGO, align 4
  %128 = or i32 %126, %127
  %129 = and i32 %125, %128
  %130 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %131 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %129, %132
  br i1 %133, label %134, label %143

134:                                              ; preds = %122
  %135 = load i8*, i8** %3, align 8
  %136 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %137 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %138 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = call i32 (i8*, %struct.ctl_table*, i8*, ...) @sysctl_err(i8* %135, %struct.ctl_table* %136, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %139)
  %141 = load i32, i32* %5, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %5, align 4
  br label %143

143:                                              ; preds = %134, %122
  br label %144

144:                                              ; preds = %143
  %145 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %146 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %145, i32 1
  store %struct.ctl_table* %146, %struct.ctl_table** %4, align 8
  br label %6

147:                                              ; preds = %6
  %148 = load i32, i32* %5, align 4
  ret i32 %148
}

declare dso_local i32 @sysctl_err(i8*, %struct.ctl_table*, i8*, ...) #1

declare dso_local i32 @sysctl_check_table_array(i8*, %struct.ctl_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
