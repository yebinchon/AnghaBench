; ModuleID = '/home/carl/AnghaBench/linux/tools/hv/extr_hv_kvp_daemon.c_kvp_get_os_info.c'
source_filename = "/home/carl/AnghaBench/linux/tools/hv/extr_hv_kvp_daemon.c_kvp_get_os_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i32 }

@uts_buf = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@os_version = common dso_local global i8* null, align 8
@os_build = common dso_local global i8* null, align 8
@os_name = common dso_local global i8* null, align 8
@processor_arch = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"/etc/os-release\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"NAME\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"VERSION_ID\00", align 1
@os_major = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"/etc/SuSE-release\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"/etc/redhat-release\00", align 1
@os_minor = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvp_get_os_info() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca [512 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = call i32 @uname(%struct.TYPE_3__* @uts_buf)
  %7 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uts_buf, i32 0, i32 0), align 8
  store i8* %7, i8** @os_version, align 8
  %8 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uts_buf, i32 0, i32 0), align 8
  %9 = call i8* @strdup(i8* %8)
  store i8* %9, i8** @os_build, align 8
  %10 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uts_buf, i32 0, i32 1), align 8
  store i8* %10, i8** @os_name, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @uts_buf, i32 0, i32 2), align 8
  store i32 %11, i32* @processor_arch, align 4
  %12 = load i8*, i8** @os_version, align 8
  %13 = call i8* @strchr(i8* %12, i8 signext 45)
  store i8* %13, i8** %2, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %0
  %17 = load i8*, i8** %2, align 8
  store i8 0, i8* %17, align 1
  br label %18

18:                                               ; preds = %16, %0
  %19 = call i32* @fopen(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %19, i32** %1, align 8
  %20 = load i32*, i32** %1, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %123

22:                                               ; preds = %18
  br label %23

23:                                               ; preds = %119, %39, %33, %22
  %24 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %25 = load i32*, i32** %1, align 8
  %26 = call i8* @fgets(i8* %24, i32 512, i32* %25)
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %120

28:                                               ; preds = %23
  %29 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %30 = load i8, i8* %29, align 16
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 35
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %23

34:                                               ; preds = %28
  %35 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %36 = call i8* @strchr(i8* %35, i8 signext 61)
  store i8* %36, i8** %2, align 8
  %37 = load i8*, i8** %2, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  br label %23

40:                                               ; preds = %34
  %41 = load i8*, i8** %2, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %2, align 8
  store i8 0, i8* %41, align 1
  %43 = load i8*, i8** %2, align 8
  store i8* %43, i8** %4, align 8
  %44 = load i8*, i8** %2, align 8
  store i8* %44, i8** %5, align 8
  br label %45

45:                                               ; preds = %92, %40
  %46 = load i8*, i8** %2, align 8
  %47 = load i8, i8* %46, align 1
  %48 = icmp ne i8 %47, 0
  br i1 %48, label %49, label %93

49:                                               ; preds = %45
  %50 = load i8*, i8** %2, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 92
  br i1 %53, label %54, label %67

54:                                               ; preds = %49
  %55 = load i8*, i8** %2, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %2, align 8
  %57 = load i8*, i8** %2, align 8
  %58 = load i8, i8* %57, align 1
  %59 = icmp ne i8 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %54
  br label %93

61:                                               ; preds = %54
  %62 = load i8*, i8** %2, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %2, align 8
  %64 = load i8, i8* %62, align 1
  %65 = load i8*, i8** %5, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %5, align 8
  store i8 %64, i8* %65, align 1
  br label %92

67:                                               ; preds = %49
  %68 = load i8*, i8** %2, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 39
  br i1 %71, label %82, label %72

72:                                               ; preds = %67
  %73 = load i8*, i8** %2, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 34
  br i1 %76, label %82, label %77

77:                                               ; preds = %72
  %78 = load i8*, i8** %2, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 10
  br i1 %81, label %82, label %85

82:                                               ; preds = %77, %72, %67
  %83 = load i8*, i8** %2, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %2, align 8
  br label %91

85:                                               ; preds = %77
  %86 = load i8*, i8** %2, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %2, align 8
  %88 = load i8, i8* %86, align 1
  %89 = load i8*, i8** %5, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %5, align 8
  store i8 %88, i8* %89, align 1
  br label %91

91:                                               ; preds = %85, %82
  br label %92

92:                                               ; preds = %91, %61
  br label %45

93:                                               ; preds = %60, %45
  %94 = load i8*, i8** %5, align 8
  store i8 0, i8* %94, align 1
  %95 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %96 = call i32 @strcmp(i8* %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %106, label %98

98:                                               ; preds = %93
  %99 = load i8*, i8** %4, align 8
  %100 = call i8* @strdup(i8* %99)
  store i8* %100, i8** %2, align 8
  %101 = load i8*, i8** %2, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %98
  br label %120

104:                                              ; preds = %98
  %105 = load i8*, i8** %2, align 8
  store i8* %105, i8** @os_name, align 8
  br label %119

106:                                              ; preds = %93
  %107 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %108 = call i32 @strcmp(i8* %107, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %118, label %110

110:                                              ; preds = %106
  %111 = load i8*, i8** %4, align 8
  %112 = call i8* @strdup(i8* %111)
  store i8* %112, i8** %2, align 8
  %113 = load i8*, i8** %2, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %116, label %115

115:                                              ; preds = %110
  br label %120

116:                                              ; preds = %110
  %117 = load i8*, i8** %2, align 8
  store i8* %117, i8** @os_major, align 8
  br label %118

118:                                              ; preds = %116, %106
  br label %119

119:                                              ; preds = %118, %104
  br label %23

120:                                              ; preds = %115, %103, %23
  %121 = load i32*, i32** %1, align 8
  %122 = call i32 @fclose(i32* %121)
  br label %201

123:                                              ; preds = %18
  %124 = call i32* @fopen(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %124, i32** %1, align 8
  %125 = load i32*, i32** %1, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  br label %134

128:                                              ; preds = %123
  %129 = call i32* @fopen(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %129, i32** %1, align 8
  %130 = load i32*, i32** %1, align 8
  %131 = icmp ne i32* %130, null
  br i1 %131, label %132, label %133

132:                                              ; preds = %128
  br label %134

133:                                              ; preds = %128
  br label %201

134:                                              ; preds = %132, %127
  %135 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %136 = load i32*, i32** %1, align 8
  %137 = call i8* @fgets(i8* %135, i32 512, i32* %136)
  store i8* %137, i8** %2, align 8
  %138 = load i8*, i8** %2, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %197

140:                                              ; preds = %134
  %141 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %142 = call i8* @strchr(i8* %141, i8 signext 10)
  store i8* %142, i8** %2, align 8
  %143 = load i8*, i8** %2, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %147

145:                                              ; preds = %140
  %146 = load i8*, i8** %2, align 8
  store i8 0, i8* %146, align 1
  br label %147

147:                                              ; preds = %145, %140
  %148 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %149 = call i8* @strdup(i8* %148)
  store i8* %149, i8** %2, align 8
  %150 = load i8*, i8** %2, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %153, label %152

152:                                              ; preds = %147
  br label %198

153:                                              ; preds = %147
  %154 = load i8*, i8** %2, align 8
  store i8* %154, i8** @os_name, align 8
  %155 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %156 = load i32*, i32** %1, align 8
  %157 = call i8* @fgets(i8* %155, i32 512, i32* %156)
  store i8* %157, i8** %2, align 8
  %158 = load i8*, i8** %2, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %160, label %196

160:                                              ; preds = %153
  %161 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %162 = call i8* @strchr(i8* %161, i8 signext 10)
  store i8* %162, i8** %2, align 8
  %163 = load i8*, i8** %2, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %165, label %167

165:                                              ; preds = %160
  %166 = load i8*, i8** %2, align 8
  store i8 0, i8* %166, align 1
  br label %167

167:                                              ; preds = %165, %160
  %168 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %169 = call i8* @strdup(i8* %168)
  store i8* %169, i8** %2, align 8
  %170 = load i8*, i8** %2, align 8
  %171 = icmp ne i8* %170, null
  br i1 %171, label %173, label %172

172:                                              ; preds = %167
  br label %198

173:                                              ; preds = %167
  %174 = load i8*, i8** %2, align 8
  store i8* %174, i8** @os_major, align 8
  %175 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %176 = load i32*, i32** %1, align 8
  %177 = call i8* @fgets(i8* %175, i32 512, i32* %176)
  store i8* %177, i8** %2, align 8
  %178 = load i8*, i8** %2, align 8
  %179 = icmp ne i8* %178, null
  br i1 %179, label %180, label %195

180:                                              ; preds = %173
  %181 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %182 = call i8* @strchr(i8* %181, i8 signext 10)
  store i8* %182, i8** %2, align 8
  %183 = load i8*, i8** %2, align 8
  %184 = icmp ne i8* %183, null
  br i1 %184, label %185, label %187

185:                                              ; preds = %180
  %186 = load i8*, i8** %2, align 8
  store i8 0, i8* %186, align 1
  br label %187

187:                                              ; preds = %185, %180
  %188 = getelementptr inbounds [512 x i8], [512 x i8]* %3, i64 0, i64 0
  %189 = call i8* @strdup(i8* %188)
  store i8* %189, i8** %2, align 8
  %190 = load i8*, i8** %2, align 8
  %191 = icmp ne i8* %190, null
  br i1 %191, label %192, label %194

192:                                              ; preds = %187
  %193 = load i8*, i8** %2, align 8
  store i8* %193, i8** @os_minor, align 8
  br label %194

194:                                              ; preds = %192, %187
  br label %195

195:                                              ; preds = %194, %173
  br label %196

196:                                              ; preds = %195, %153
  br label %197

197:                                              ; preds = %196, %134
  br label %198

198:                                              ; preds = %197, %172, %152
  %199 = load i32*, i32** %1, align 8
  %200 = call i32 @fclose(i32* %199)
  br label %201

201:                                              ; preds = %198, %133, %120
  ret void
}

declare dso_local i32 @uname(%struct.TYPE_3__*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i8* @fgets(i8*, i32, i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
