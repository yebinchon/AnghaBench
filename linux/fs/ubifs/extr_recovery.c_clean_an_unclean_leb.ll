; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_recovery.c_clean_an_unclean_leb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_recovery.c_clean_an_unclean_leb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32 }
%struct.ubifs_unclean_leb = type { i32, i32 }
%struct.ubifs_ch = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"LEB %d len %d\00", align 1
@EBADMSG = common dso_local global i32 0, align 4
@SCANNED_A_NODE = common dso_local global i32 0, align 4
@SCANNED_EMPTY_SPACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"unexpected empty space at %d:%d\00", align 1
@EUCLEAN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"cleaned LEB %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.ubifs_unclean_leb*, i8*)* @clean_an_unclean_leb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clean_an_unclean_leb(%struct.ubifs_info* %0, %struct.ubifs_unclean_leb* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca %struct.ubifs_unclean_leb*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ubifs_ch*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store %struct.ubifs_unclean_leb* %1, %struct.ubifs_unclean_leb** %6, align 8
  store i8* %2, i8** %7, align 8
  %18 = load %struct.ubifs_unclean_leb*, %struct.ubifs_unclean_leb** %6, align 8
  %19 = getelementptr inbounds %struct.ubifs_unclean_leb, %struct.ubifs_unclean_leb* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %21 = load %struct.ubifs_unclean_leb*, %struct.ubifs_unclean_leb** %6, align 8
  %22 = getelementptr inbounds %struct.ubifs_unclean_leb, %struct.ubifs_unclean_leb* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %24 = load i8*, i8** %7, align 8
  store i8* %24, i8** %13, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call i32 (i8*, i32, ...) @dbg_rcvry(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load i32, i32* %11, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %3
  %31 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @ubifs_leb_unmap(%struct.ubifs_info* %31, i32 %32)
  store i32 %33, i32* %4, align 4
  br label %171

34:                                               ; preds = %3
  %35 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i8*, i8** %13, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @ubifs_leb_read(%struct.ubifs_info* %35, i32 %36, i8* %37, i32 %38, i32 %39, i32 0)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %34
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @EBADMSG, align 4
  %46 = sub nsw i32 0, %45
  %47 = icmp ne i32 %44, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %4, align 4
  br label %171

50:                                               ; preds = %43, %34
  br label %51

51:                                               ; preds = %112, %87, %66, %50
  %52 = load i32, i32* %11, align 4
  %53 = icmp sge i32 %52, 8
  br i1 %53, label %54, label %121

54:                                               ; preds = %51
  %55 = call i32 (...) @cond_resched()
  %56 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %57 = load i8*, i8** %13, align 8
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @ubifs_scan_a_node(%struct.ubifs_info* %56, i8* %57, i32 %58, i32 %59, i32 %60, i32 %61)
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* @SCANNED_A_NODE, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %84

66:                                               ; preds = %54
  %67 = load i8*, i8** %13, align 8
  %68 = bitcast i8* %67 to %struct.ubifs_ch*
  store %struct.ubifs_ch* %68, %struct.ubifs_ch** %15, align 8
  %69 = load %struct.ubifs_ch*, %struct.ubifs_ch** %15, align 8
  %70 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @le32_to_cpu(i32 %71)
  %73 = call i32 @ALIGN(i32 %72, i32 8)
  store i32 %73, i32* %16, align 4
  %74 = load i32, i32* %16, align 4
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %16, align 4
  %78 = load i8*, i8** %13, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr i8, i8* %78, i64 %79
  store i8* %80, i8** %13, align 8
  %81 = load i32, i32* %16, align 4
  %82 = load i32, i32* %11, align 4
  %83 = sub nsw i32 %82, %81
  store i32 %83, i32* %11, align 4
  br label %51

84:                                               ; preds = %54
  %85 = load i32, i32* %14, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %84
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %14, align 4
  %92 = load i8*, i8** %13, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr i8, i8* %92, i64 %93
  store i8* %94, i8** %13, align 8
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* %11, align 4
  %97 = sub nsw i32 %96, %95
  store i32 %97, i32* %11, align 4
  br label %51

98:                                               ; preds = %84
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* @SCANNED_EMPTY_SPACE, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %109

102:                                              ; preds = %98
  %103 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %10, align 4
  %106 = call i32 @ubifs_err(%struct.ubifs_info* %103, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %104, i32 %105)
  %107 = load i32, i32* @EUCLEAN, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %4, align 4
  br label %171

109:                                              ; preds = %98
  %110 = load i32, i32* %12, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  store i32 0, i32* %12, align 4
  br label %51

113:                                              ; preds = %109
  %114 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %10, align 4
  %117 = load i8*, i8** %13, align 8
  %118 = call i32 @ubifs_scanned_corruption(%struct.ubifs_info* %114, i32 %115, i32 %116, i8* %117)
  %119 = load i32, i32* @EUCLEAN, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %4, align 4
  br label %171

121:                                              ; preds = %51
  %122 = load %struct.ubifs_unclean_leb*, %struct.ubifs_unclean_leb** %6, align 8
  %123 = getelementptr inbounds %struct.ubifs_unclean_leb, %struct.ubifs_unclean_leb* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %126 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @ALIGN(i32 %124, i32 %127)
  store i32 %128, i32* %11, align 4
  %129 = load i32, i32* %11, align 4
  %130 = load %struct.ubifs_unclean_leb*, %struct.ubifs_unclean_leb** %6, align 8
  %131 = getelementptr inbounds %struct.ubifs_unclean_leb, %struct.ubifs_unclean_leb* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = icmp sgt i32 %129, %132
  br i1 %133, label %134, label %158

134:                                              ; preds = %121
  %135 = load i32, i32* %11, align 4
  %136 = load %struct.ubifs_unclean_leb*, %struct.ubifs_unclean_leb** %6, align 8
  %137 = getelementptr inbounds %struct.ubifs_unclean_leb, %struct.ubifs_unclean_leb* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @ALIGN(i32 %138, i32 8)
  %140 = sub nsw i32 %135, %139
  store i32 %140, i32* %17, align 4
  %141 = load i32, i32* %17, align 4
  %142 = icmp sgt i32 %141, 0
  br i1 %142, label %143, label %157

143:                                              ; preds = %134
  %144 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %145 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %11, align 4
  %148 = add nsw i32 %146, %147
  %149 = load i32, i32* %17, align 4
  %150 = sub nsw i32 %148, %149
  %151 = sext i32 %150 to i64
  %152 = inttoptr i64 %151 to i8*
  store i8* %152, i8** %13, align 8
  %153 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %154 = load i8*, i8** %13, align 8
  %155 = load i32, i32* %17, align 4
  %156 = call i32 @ubifs_pad(%struct.ubifs_info* %153, i8* %154, i32 %155)
  br label %157

157:                                              ; preds = %143, %134
  br label %158

158:                                              ; preds = %157, %121
  %159 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %160 = load i32, i32* %9, align 4
  %161 = load i8*, i8** %7, align 8
  %162 = load i32, i32* %11, align 4
  %163 = call i32 @ubifs_leb_change(%struct.ubifs_info* %159, i32 %160, i8* %161, i32 %162)
  store i32 %163, i32* %8, align 4
  %164 = load i32, i32* %8, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %158
  %167 = load i32, i32* %8, align 4
  store i32 %167, i32* %4, align 4
  br label %171

168:                                              ; preds = %158
  %169 = load i32, i32* %9, align 4
  %170 = call i32 (i8*, i32, ...) @dbg_rcvry(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %169)
  store i32 0, i32* %4, align 4
  br label %171

171:                                              ; preds = %168, %166, %113, %102, %48, %30
  %172 = load i32, i32* %4, align 4
  ret i32 %172
}

declare dso_local i32 @dbg_rcvry(i8*, i32, ...) #1

declare dso_local i32 @ubifs_leb_unmap(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ubifs_leb_read(%struct.ubifs_info*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @ubifs_scan_a_node(%struct.ubifs_info*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, i32, i32) #1

declare dso_local i32 @ubifs_scanned_corruption(%struct.ubifs_info*, i32, i32, i8*) #1

declare dso_local i32 @ubifs_pad(%struct.ubifs_info*, i8*, i32) #1

declare dso_local i32 @ubifs_leb_change(%struct.ubifs_info*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
